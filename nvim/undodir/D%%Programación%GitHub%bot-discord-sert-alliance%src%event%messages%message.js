Vim�UnDo� �v����_��I@����Zv,,��?�!��1X�  �   1            (ch) => ch.name === "📯・level-up"     (                       aN�	    _�                           ����                                                                                                                                                                                                                                                                                                                                                             aM5     �              /            message.channel.send(timeOutEmbed);5��                         �%      0               5�_�                      
    ����                                                                                                                                                                                                                                                                                                                                                             aM5�    �   n    �   �   *      //Get the ObjectMember by Maps         &      objectMember = initObjectMember(           guilds,           objectMember,           message.guild.id,           message.author.id         );   .      //Get the ObjectBankMember by Maps         *      objectBankMember = initObjectMember(           bankGuilds,           objectBankMember,           message.guild.id,           message.author.id         );         if (!objectMember) {   +        await insertMember(guildID, userID)             .then(() =>   I            console.log("Nuevo Usuario Agregado a la Tabla GuildMembers")             )   ,          .catch((err) => console.log(err));   D        await insertMemberMap(guildID, userID, guildMembers, guilds)             .then(() =>   F            console.log("Nuevo Usuario Agregado al Mapa GuildMembers")             )   ,          .catch((err) => console.log(err));           return;         }         if (!objectBankMember) {   /        await insertMemberBank(guildID, userID)             .then(() =>   F            console.log("Nuevo Usuario Agregado a la Tabla GuildBank")             )   ,          .catch((err) => console.log(err));   P        await insertBankMemberMap(guildID, userID, guildMembersBank, bankGuilds)   N          .then(() => console.log("Nuevo Usuario Agregado al Mapa GuildBank"))   ,          .catch((err) => console.log(err));           return;         }       }       //Prefix del Servidor       let prefix = 0;   (    if (message.channel.type !== "dm") {   8      prefix = guildCommandPrefix.get(message.guild.id);       } else {         prefix = "!";       }       @    const digitPrefix = message.content.slice(0, prefix.length);   !    if (digitPrefix === prefix) {   3      const [cmdName, ...cmdArgs] = message.content           .slice(prefix.length)           .split(/\s+/);         const command =   P        bot.commands.get(cmdName) || bot.commands.get(bot.aliases.get(cmdName));         if (command) {   4        //Validación El usuario es un Administrador   ,        if (message.channel.type !== "dm") {   <          const { inmortalMember, memberID } = objectMember;   %          if (inmortalMember === 0) {   )            if (cooldown.has(memberID)) {                 message.delete();   F              const emojiCancelado = synchronous.emojiID[0].cancelado;   #              return message.reply(                   ` ${putEmoji(                     bot,                      emojiCancelado   S                )} Debes esperar almenos **${cdseconds}s** para usar otro comando.`                 );               } else {   1              command.run(bot, message, cmdArgs);               }   #            cooldown.add(memberID);             } else {   /            command.run(bot, message, cmdArgs);             }             setTimeout(() => {   &            cooldown.delete(memberID);             }, cdseconds * 1000);           } else {   -          command.run(bot, message, cmdArgs);   	        }         }       } else {   F      if (message.author.bot || message.channel.type === "dm") return;   A      if (existMember.length > 0 || existMemberBank.length > 0) {   2        //Inicialización de Variables por Objetos   3        const { memberCoins } = existMemberBank[0];           const {             memberID,             memberXP,             memberLevel,             memberBoost,             boostMemberTime,           } = objectMember;   $        //Ganancia de XP por Miembro   /        const curboost = parseInt(memberBoost);           if (curboost > 1) {   7          let curBoostTime = parseInt(boostMemberTime);   *          curBoostTime = curBoostTime - 1;   F          const upadateMemberBoostTime = await updateGuildMemberBoost(               guildID,               memberID,               curboost,               curBoostTime             );             StateManager.emit(   $            "updateBoostMemberTime",               guildID,               memberID,               curboost,               curBoostTime             );   6          objectMember.boostMemberTime = curBoostTime;   #          if (curBoostTime === 0) {   C            const updateMemberBoost = await updateGuildMemberBoost(                 guildID,                 memberID,                 1,                 curBoostTime               );               StateManager.emit(   "              "updateMemberBoost",                 guildID,                 memberID,                 1,                 curBoostTime               );   )            objectMember.memberBoost = 1;   ?            //Inicialización de Variables Emojis - guildEmojis   C            const emojiF = putEmoji(bot, synchronous.emojiID[0].f);   M            const emojiBoostB = putEmoji(bot, synchronous.emojiID[0].boostb);   M            const emojiBoostA = putEmoji(bot, synchronous.emojiID[0].boosta);   M            const emojiBoostP = putEmoji(bot, synchronous.emojiID[0].boostp);   0            //Mensaje EMBED de se acabo el Boost   3            const timeOutEmbed = new MessageEmbed()                 .setAuthor(   9                `**${message.author.username}'s Boost**`,   +                bot.user.displayAvatarURL()                 )   >              .setThumbnail(message.author.displayAvatarURL())   $              .setColor(thrizzColor)                 .addField(                   "**Plebeyo**",   Q                `<@${message.author.id}> se terminó tu **boost** de experiencia`                 )   N              .setFooter("Caza Recompensas Internacionales de Mundo Kyonax !")                 .setTimestamp()   8              .setTitle(`**Boost Terminado** ${emojiF}`)                 .addField(   ,                "**Boosts de Experiencia**",   3                `Si deseas **comprar** otro usa ` +                     "`" +   3                  guildCommandPrefix.get(guildID) +   '                  "payboost <base> `" +   $                  `${emojiBoostB}` +   '                  " Ó `<avanzado> `" +   $                  `${emojiBoostA}` +   %                  " Ó `<premium>`" +   "                  `${emojiBoostP}`                 );             }   	        }   /        //Inicialización de Variables memberXP   5        const xp = generateXP(parseInt(memberBoost));   /        let updateXP = xp + parseInt(memberXP);   E        const newLevel = limitLevel(updateXP, parseInt(memberLevel));   %        if (newLevel > memberLevel) {   >          const emojiLevelUp = synchronous.emojiID[0].levelup;   A          const levelChannel = message.guild.channels.cache.find(   1            (ch) => ch.name === "📯・level-up"             );          5��    n       �       �       �            �      5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             aN�    �      �      1            (ch) => ch.name === "📯・level-up"5��                        �'                    5��