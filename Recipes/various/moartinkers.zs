#priority 9800

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

#zinc smeltery smelting
mods.tconstruct.Melting.addRecipe(<liquid:zinc> * 288,<ore:oreZinc>);


#brass alloying

    mods.tconstruct.Alloy.addRecipe(<liquid:brass> * 432, [<liquid:copper> * 288, 
                                                           <liquid:zinc> * 144 ]
                                                           );

#ludicrite - alloying

    mods.tconstruct.Alloy.addRecipe(<liquid:ludicrite> * 2592, [<liquid:electrumflux> * 576, 
                                                                <liquid:manyullyn> * 432, 
                                                                <liquid:brass> * 432, 
                                                                <liquid:signalum> * 576,
                                                                <liquid:platinum> * 576 ]
                                                                );


#advanced alloy - alloying 

    mods.tconstruct.Alloy.addRecipe(<liquid:advancedalloy> * 5184, [<liquid:ludicrite> * 1296, 
                                                                    <liquid:blutonium> * 1296, 
                                                                    <liquid:enderium> * 576, 
                                                                    <liquid:lumium> * 720,
                                                                    <liquid:mithril> * 1296 ]
                                                                    );

//stuff
    #advanced alloy - alloying  


    #brass alloying = copper + zinc
    #advanced alloy = ludicrite + blutonium + enderium + lumium + mithril
    #ludicrite = fluxed electrum + manyullyn + brass + signalum + platinum

    #METAL BLOCK MINING LEVELS



//MAKE SOME EXISTING MATERIAL PARTS ACTUALLY USABLE

    static materials as ILiquidStack[] = [
        <liquid:zinc>,
        <liquid:brass>,
        <liquid:brass>,
        <liquid:electrumflux>,
        <liquid:yellorium>,
        <liquid:advancedalloy>
    ];

    static parts as IItemStack[][int] = {

        72: [
            <tconstruct:shard>
        ],

        144: [
            <tcomplement:chisel_head>,
            <tconstruct:tool_rod>,
            <tconstruct:binding>,
            <tconstruct:wide_guard>,
            <tconstruct:hand_guard>,
            <tconstruct:cross_guard>,
            <tconstruct:knife_blade>
        ],

        288: [
            <tconstruct:sharpening_kit>,
            <tconstruct:shovel_head>,
            <tconstruct:sword_blade>,
            <tconstruct:kama_head>,
            <tconstruct:arrow_head>
        ],

        432: [
            <tconstruct:pick_head>,
            <tconstruct:axe_head>,
            <tconstruct:sign_head>,
            <tconstruct:tough_tool_rod>,
            <tconstruct:tough_binding>,
            <tconstruct:bow_limb>
        ],

        576: [
            <tconstruct:pan_head>
        ],

        1152: [
            <tconstruct:broad_axe_head>,
            <tconstruct:large_sword_blade>,
            <tconstruct:hammer_head>,
            <tconstruct:excavator_head>,
            <tconstruct:scythe_head>,
            <tconstruct:large_plate>
        ]

    };


 //Add casting recipes for missing materials
    for material in materials {

        for i in parts.keys {

            for part in parts[i] {
                
                var outPart as IItemStack = part.withTag({Material: material.name});

                //print("HADOUKEN: " + part.commandString);

                var partName as string = part.commandString;
                partName = partName.substring(1, partName.length() - 1);

                //Aluminum brass casting
                mods.tconstruct.Casting.addTableRecipe( outPart,                                                        //IItemStack output, 
                                                        <tconstruct:cast>.withTag({PartType: partName}),                //IIngredient cast, 
                                                        material,                                                       //ILiquidStack fluid, 
                                                        i,                                                              //int amount, 
                                                        false,                                                          //@Optional boolean consumeCast, 
                                                        ((i/144)+1)*20);                                                //@Optional int time

                //Clay casting
                mods.tconstruct.Casting.addTableRecipe( outPart,                                                        //IItemStack output, 
                                                        <tconstruct:clay_cast>.withTag({PartType: partName}),           //IIngredient cast, 
                                                        material,                                                       //ILiquidStack fluid, 
                                                        i,                                                              //int amount, 
                                                        true,                                                           //@Optional boolean consumeCast, 
                                                        ((i/144)+1)*20);                                                //@Optional int time


            }
        }
    }
        
        
        
        
        
        
        
      
        
        