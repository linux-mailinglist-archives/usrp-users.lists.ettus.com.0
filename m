Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A921A765F0A
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jul 2023 00:14:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 262DE384CB6
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jul 2023 18:14:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690496061; bh=Mbes6c5DC2f+76lgPb7kLXViRlNclxghMvyYMmc2dJA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=c7gBIMZ6Ev+uyQBq28vWaC1z3ZXi8/fbHHd1lOQxzLlmvzMv2L9fs/LRDOHmfd0Cv
	 /UWYRzv3CJ/sPrWH4mno8Z5qnfGBzGAcZg4YjsbFZOrHxp4S7JYVDa/Lt0AkrAT3zy
	 fQ/cJh6uAcbtgli7/Iuydws3wN1QEW6k2b9hoWV1k4hjYamjhtG9xIytewfdTGWUgO
	 nx82BxPibODqb25EUDHehL0xtpTgPmtJrC7g6YrGqUYthOaskJDF2JB/05dIV+fEZp
	 pz6PpjAGHgHnPqG9fm1JWWIJX5Os+ofc/fVMm9oTWh1NBSyntsFSlFBhEnqhKot1TX
	 n0+Qcx465tgTw==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A656384CB2
	for <usrp-users@lists.ettus.com>; Thu, 27 Jul 2023 18:13:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Qv6CGmxi";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5222bc91838so1927967a12.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Jul 2023 15:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1690496023; x=1691100823;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=phyxw629ekKWnZWwyHwMc+NvZX9ICzE34Fe9GUef8gQ=;
        b=Qv6CGmxiXOY/Btvr3Ut1IpMV5K61izy9lOUrdaDWDBRRRkX6AcgJr+60zsSfv7Ozfd
         uTqbjlHy/47x2wR6oCcZZO5okbf/ftnAYHIWuw2iq3Xge59XZDd99VndQTbvQQPhRtXO
         wdJbjH7BB/r/JoaztFbWc3LMTXuipDO5lZcsKPzZvPxraxvWSFbE3G8S0RXKc5IQhLzx
         Z2YUJp+bMBh4dnE6I2wEVfQfZvA8SgT9Oo506IWGCcDMC57nyeA/1JYkv4OUKGTskGH/
         LELe03tq9GdufLkLWXNkh0P6MVhF/DIoxBEgnebXh+CzY+o8dG7bBS2oM+1s7bRt4okj
         jn3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690496023; x=1691100823;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=phyxw629ekKWnZWwyHwMc+NvZX9ICzE34Fe9GUef8gQ=;
        b=ejYR5o7lLQuD2qxvkQBFKbV97bRV+C2K3bXU3Ea6dkZIuhqlQHSc5NzW45epFCOe0V
         IAjYUAjAOMqOKgSxcomRkWFtlNVN1jY8yScdPrlhqe4w3xFgVLWSjEIE8WM/E+R+1OZu
         lTm/UI42hZJ3S8eO/MojIPRLBHS24A6M2bwUV0PRVZEiwUY6sSZNEOV27YJqw8A774w4
         1iFdQ7uXhEg6nevwQLAYCERSR9KpX47q2egBICEes31pAzhqEVMFerf4M6O1rGtd7Qhs
         u72q/XHVQayRSG7G95oPvUz67+dAXyL+8y3og/MqO88b3py2JFe7qBFGvBfPk2tr7LRL
         NvzA==
X-Gm-Message-State: ABy/qLZuRFsAL5+I3rCh9QvqJXn+/dzb6m/hZY7Nq9DVZabCgS2JjbwD
	ET8XNHydxVm8AKIvjju23Fl+xTe1QmjtjpQxI4Yjjw==
X-Google-Smtp-Source: APBJJlEouF7XcdEEbbAtmTtEtR2noAUjaGVzuNneK8zpTLICpYIe6Ri2lQ6nSfLFk6G5rDTvAA3gV3Ej/UooO/4MT/E=
X-Received: by 2002:aa7:c3cf:0:b0:51e:26dc:b35e with SMTP id
 l15-20020aa7c3cf000000b0051e26dcb35emr196599edr.21.1690496023177; Thu, 27 Jul
 2023 15:13:43 -0700 (PDT)
MIME-Version: 1.0
References: <PH0PR09MB7433546CE3D5D14F18D7005DA800A@PH0PR09MB7433.namprd09.prod.outlook.com>
 <85f24be9-3286-b80d-4eed-27cf5fae5bf7@gmail.com> <PH0PR09MB7433E43091B0FE111D4D2F74A800A@PH0PR09MB7433.namprd09.prod.outlook.com>
 <ad84ae31-517b-89f3-c4b4-936343939747@gmail.com>
In-Reply-To: <ad84ae31-517b-89f3-c4b4-936343939747@gmail.com>
Date: Thu, 27 Jul 2023 18:13:31 -0400
Message-ID: <CAB__hTQSCSSWKHx3pSqARywC0ryMUEnJkKsG_1r73RhQ5Jpzgg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: SQ5B2G5XAH6MEYKLBQ44BW2Y4OFSMLMU
X-Message-ID-Hash: SQ5B2G5XAH6MEYKLBQ44BW2Y4OFSMLMU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David J Li <dli@mitre.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: N310 correct choice for coherent 4 channel RX w/ 1 TX ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SQ5B2G5XAH6MEYKLBQ44BW2Y4OFSMLMU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6353208787244147151=="

--===============6353208787244147151==
Content-Type: multipart/alternative; boundary="000000000000f5360206017f4611"

--000000000000f5360206017f4611
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,
You seem to already know the essentials based on the previous comments.

I have used each of the following USRPs in various 4-channel
coherent experiments. I'll mention a couple of comments about each.

   - The X310/UBX can be phase calibrated, but it can't operate with a
   shared LO
   - The X310/TwinRx can also be phase calibrated and it can operate with a
   shared LO, but there is no transmit channel
   - The N310 can be phase calibrated and can operate with an external
   shared LO but with the 180 deg ambiguity you mentioned.  However each
   "pair" of Rx or Tx share the same circuitry so they inherently share the
   same ambiguity. Thus, if channel 0 is +180 on this calibration, then
   channel 1 will also be +180.  The N310 can used shared LO as you mention=
ed
   with the 5GHz startup calibration but it does not operate above 4 GHz (e=
xt
   LO at 8 GHz)
   - The N321 can share LO among all Tx and Rx channels (I have implemented
   16x16). In this configuration, it is easy to get the same phase calibrat=
ion
   every time since the LO is shared. This is a great choice if you can
   tolerate the additional expense, size, and weight of two devices.

Depending on "just how coherent" you need to be affects whether you
want/need "shared LO".  If the LO is not shared, then each LO disciplines
to a common reference signal. This can provide a consistent average phase
offset among channels (as in the X310/UBX), but the instantaneous phase of
a given channel can deviate based on its individual phase locked loop
(PLL). All of the PLLs will keep the relative phase/frequency within a
tolerance, but it is not the same as a shared LO for which slight
deviations will be identical on every channel.
Rob


On Wed, Jul 26, 2023 at 5:30=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 26/07/2023 17:17, David J Li wrote:
>
> Thanks for the suggestion, Marcus. The N320 and N321 are only both 2 TX/R=
X
> devices as far as I can tell, so to satisfy 4 RX, 1 TX it looks like I
> would need 2 devices. Do you happen to know if there is any official
> documentation on using the external LO for the N310 hidden somewhere on t=
he
> Ettus wiki? The 5 GHz external LO initial input requirement doesn=E2=80=
=99t seem to
> be documented anywhere as far as I can tell.
>
> It is the case that there are some app-notes needed for the N310,
> including the "5GHz Lore" -- this requirement comes, from
>   what I understand, from the AD9371 data-sheet.
>
> There are folks on this list who have used the external LO on N310
> successfully, including (I believe, please correct me if I'm
>   wrong) Rob Kossler.
>
>
>
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> <patchvonbraun@gmail.com>
> *Sent:* Wednesday, July 26, 2023 4:51 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [EXT] [USRP-users] Re: N310 correct choice for coherent 4
> channel RX w/ 1 TX ?
>
>
>
>
>
> ZjQcmQRYFpfptBannerEnd
>
> On 26/07/2023 16:47, David J Li wrote:
>
> Hi all,
>
>
>
> I=E2=80=99m currently using a USRP N310 for an application that requires =
coherent
> 4 channel RX w/ the ability to TX on 1 channel as well. In the past, I=E2=
=80=99ve
> used USRP X310s to do 4 channel coherent RX and found the calibration
> process for that to be relatively straight forward using the TwinRX cards=
.
> It was simply phase aligned input signals into each RX port and computing
> the constant phase offset between channels and just adjusting for that
> factor in my processing digitally.
>
>
>
> My understanding is that this is more complicated w/ the N310. The
> procedure as I understand is that during initialization the N310 external
> LO needs to be set at 5 GHz. After initialization, the external LO can be
> set to 2 times the desired center freq, but that there is still a 180 deg
> ambiguity between channels which would need to be figured out via
> calibration w/ a phase aligned input signal. Is this correct? Is there so=
me
> way to shorten or optimize this procedure?
>
> The phase ambiguity arises from the 2XLO mixing in the RFIC chips, and
> there's no way around it.
>
> You might look at the N320/N321 family for multi-channel coherent TX/RX
> applications.
>
>
>
>
> Second question would be if the process is simpler on different USRP
> models akin to how the X310 w/ TwinRX cards work where you just need to
> compute some calibration values once at powerup and afterwards those valu=
es
> hold pretty true for a long time as long as your gain/center freq don=E2=
=80=99t
> change. Having the requirement of being able to TX on at least 1 channel
> prevents me from using an X310 w/ TwinRX cards.
>
>
>
> Thanks,
>
> -David
>
>
>
> _______________________________________________
>
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f5360206017f4611
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi David,</div><div dir=3D"ltr">You seem =
to already know the essentials based on the previous comments.<br></div><di=
v dir=3D"ltr"><br></div><div>I have used each of the following USRPs in var=
ious 4-channel coherent=C2=A0experiments. I&#39;ll mention a couple of comm=
ents about each.=C2=A0</div><div><ul><li>The X310/UBX can be phase calibrat=
ed, but it can&#39;t operate with a shared LO</li><li>The X310/TwinRx can a=
lso be phase calibrated and it can operate with a shared LO, but there is n=
o transmit channel</li><li>The N310 can be phase calibrated and can operate=
 with an external shared LO but with the 180 deg ambiguity you mentioned.=
=C2=A0 However each &quot;pair&quot; of Rx or Tx share the same circuitry s=
o they inherently share the same ambiguity. Thus, if channel 0 is=C2=A0+180=
 on this calibration, then channel 1 will also be=C2=A0+180.=C2=A0 The N310=
 can used shared LO as you mentioned with the 5GHz startup calibration but =
it does not operate above 4 GHz (ext LO at 8 GHz)</li><li>The N321 can shar=
e LO among all Tx and Rx channels (I have implemented 16x16). In this confi=
guration, it is easy to get the same phase calibration every time since the=
 LO is shared. This is a great choice if you can tolerate the additional ex=
pense, size, and weight of two devices.</li></ul><div>Depending on &quot;ju=
st how coherent&quot; you need to be affects whether you want/need &quot;sh=
ared LO&quot;.=C2=A0 If the LO is not shared, then each LO disciplines to a=
 common reference signal. This can provide a consistent average phase offse=
t among channels (as in the X310/UBX), but the instantaneous phase of a giv=
en channel can deviate based on its individual phase locked loop (PLL). All=
 of the PLLs will keep the relative phase/frequency within a tolerance, but=
 it is not the same as a shared LO for which slight deviations=C2=A0will be=
 identical on every channel.</div><div>Rob</div><div><br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul =
26, 2023 at 5:30=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 26/07/2023 17:17, David J Li wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">Thanks for the suggestion, Marcus. The N320
          and N321 are only both 2 TX/RX devices as far as I can tell,
          so to satisfy 4 RX, 1 TX it looks like I would need 2 devices.
          Do you happen to know if there is any official documentation
          on using the external LO for the N310 hidden somewhere on the
          Ettus wiki? The 5 GHz external LO initial input requirement
          doesn=E2=80=99t seem to be documented anywhere as far as I can te=
ll.</p>
      </div>
    </blockquote>
    It is the case that there are some app-notes needed for the N310,
    including the &quot;5GHz Lore&quot; -- this requirement comes, from<br>
    =C2=A0 what I understand, from the AD9371 data-sheet.<br>
    <br>
    There are folks on this list who have used the external LO on N310
    successfully, including (I believe, please correct me if I&#39;m<br>
    =C2=A0 wrong) Rob Kossler.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <p class=3D"MsoNormal"><u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <div style=3D"border-right:none;border-bottom:none;border-left:none=
;border-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
          <p class=3D"MsoNormal"><b><span>From:</span></b><span> Marcus D. =
Leech
              <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">=
&lt;patchvonbraun@gmail.com&gt;</a>
              <br>
              <b>Sent:</b> Wednesday, July 26, 2023 4:51 PM<br>
              <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [EXT] [USRP-users] Re: N310 correct choice
              for coherent 4 channel RX w/ 1 TX ?<u></u><u></u></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:1pt"><u></u>=C2=
=A0<u></u></span></p>
          <p class=3D"MsoNormal"><span style=3D"font-size:1pt"><u></u>=C2=
=A0<u></u></span></p>
          <p class=3D"MsoNormal"><span style=3D"font-size:1pt;color:white">=
ZjQcmQRYFpfptBannerEnd<u></u><u></u></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal">On 26/07/2023 16:47, David J Li wrote:<u><=
/u><u></u></p>
        </div>
        <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
          <p class=3D"MsoNormal">Hi all,<u></u><u></u></p>
          <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
          <p class=3D"MsoNormal">I=E2=80=99m currently using a USRP N310 fo=
r an
            application that requires coherent 4 channel RX w/ the
            ability to TX on 1 channel as well. In the past, I=E2=80=99ve u=
sed
            USRP X310s to do 4 channel coherent RX and found the
            calibration process for that to be relatively straight
            forward using the TwinRX cards. It was simply phase aligned
            input signals into each RX port and computing the constant
            phase offset between channels and just adjusting for that
            factor in my processing digitally.
            <u></u><u></u></p>
          <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
          <p class=3D"MsoNormal">My understanding is that this is more
            complicated w/ the N310. The procedure as I understand is
            that during initialization the N310 external LO needs to be
            set at 5 GHz. After initialization, the external LO can be
            set to 2 times the desired center freq, but that there is
            still a 180 deg ambiguity between channels which would need
            to be figured out via calibration w/ a phase aligned input
            signal. Is this correct? Is there some way to shorten or
            optimize this procedure?
            <u></u><u></u></p>
        </blockquote>
        <p class=3D"MsoNormal"><span>The phase
            ambiguity arises from the 2XLO mixing in the RFIC chips, and
            there&#39;s no way around it.<br>
            <br>
            You might look at the N320/N321 family for multi-channel
            coherent TX/RX applications.<br>
            <br>
            <br>
            <u></u><u></u></span></p>
        <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
          <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
          <p class=3D"MsoNormal">Second question would be if the process
            is simpler on different USRP models akin to how the X310 w/
            TwinRX cards work where you just need to compute some
            calibration values once at powerup and afterwards those
            values hold pretty true for a long time as long as your
            gain/center freq don=E2=80=99t change. Having the requirement o=
f
            being able to TX on at least 1 channel prevents me from
            using an X310 w/ TwinRX cards.<u></u><u></u></p>
          <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
          <p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
          <p class=3D"MsoNormal">-David<u></u><u></u></p>
          <p class=3D"MsoNormal"><span><br>
              <br>
              <u></u><u></u></span></p>
          <pre>_______________________________________________<u></u><u></u=
></pre>
          <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><u></u><u></u>=
</pre>
          <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com<=
/a><u></u><u></u></pre>
        </blockquote>
        <p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000f5360206017f4611--

--===============6353208787244147151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6353208787244147151==--
