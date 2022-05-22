Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6942F53017D
	for <lists+usrp-users@lfdr.de>; Sun, 22 May 2022 09:11:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 332B738475E
	for <lists+usrp-users@lfdr.de>; Sun, 22 May 2022 03:11:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653203473; bh=3VOuoTdyWVfnphaLctYxDZcOpcSgDmcBba4DJ2Fi8/U=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NKDJc1pF6LmjwNQ7JlGuTvFYGBpXJ1kpp9AAgwv6x9mSqtxAsi6Lv90k3AJUgWYyR
	 6baMUPFLtYBtzLJcxyt/ZninNnnDa0yV1tNLBE4zghxoQBaj2sGI4HuU3LQ4sj4uC8
	 xYBrYcsMJdBQMeP1V6odzhi+tbL6aF7FzPmJrduykaJf1EFZi8MawnWHWnw2Z3smWf
	 TsFs4rKBkxRAS5zaUwrukMBMP7YgvJUustojykxwXuQSB1ngt5imAWRrbdRernaoUJ
	 1YpYxGzQm+btk/ku8ilBVm6z34jLgMWXfRjL7LvzqZidocrVdpsR3gekZ4fTVxxeGl
	 23GxRuHCQd5Eg==
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 6234A384492
	for <usrp-users@lists.ettus.com>; Sun, 22 May 2022 03:10:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SNdmJGc3";
	dkim-atps=neutral
Received: by mail-yb1-f171.google.com with SMTP id x2so20092926ybi.8
        for <usrp-users@lists.ettus.com>; Sun, 22 May 2022 00:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5BYtUkBDBgUB4qQnV0C2/a+/Q1G4idKVy/rmovydE1w=;
        b=SNdmJGc3d/EGsKZ0HRlnKpPTKJWrWX13pLmAg6LaCMXQGyyM2Ac8RiZAr8oWlkAqoT
         6OKecxPOu0mFO7wfPMxNDf72JMswAh6ToidA5WDo7NtpyCtp+Ni413bSlSXU2Xb0uc+x
         UD2VHwiZYc4uzGV199GsDAkM0kCijoEpfrOrSh9gSvAAN163T6rGaKOzcbJ1mgFPu0CV
         BdQG9FW/2OdmEIUu8D5x1dpQB4wcbXLifb+/FSiv85JVpHMO6WH2PNGQ6Xx13nZ+IUE4
         3IjYahE/YJtth8jELlq9zLFUPrW+X7hII2trY9/mVmGLD2D2KCrpl4XZdj1HvLkr8J07
         m+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5BYtUkBDBgUB4qQnV0C2/a+/Q1G4idKVy/rmovydE1w=;
        b=RqNDhSeFUsoXANj1WeVbMEdGfT0ida/g6FUTkmdjHOpWU2Mie6EweDJVMoU94O1Ucr
         4E8PqSWymV8/FoRby+2hW41Z9XEpezsCMz+jIj34RYNR+hVcduvmrY99glAq5fGCXwqj
         TOyUu7JrA0AoSzgu8Xsm2UX5l/JcMX474tsx8MujeF0o7azvZsihdRuu8ICjEJAT5Mod
         BseCUUyaZmLmi7T68a3xFdHMIYcoLjbpYjUz12JwTiDLRcBxL9O+V/WqXBjjmpKPtFFu
         kpnKhxyPF1dF26grZsOZZB5XlrrpELIoUBC0wedvBj2SbRDbX2gITtNH/GZKwxgQd78C
         XvBg==
X-Gm-Message-State: AOAM53193leJsWz1ARreILVDxNiiymenAZu/2qi8SKyAXVktKIXviOk1
	V/aq2kFCY/aZWAlvV0hZPcjmfSkdF2hebVgJUPA=
X-Google-Smtp-Source: ABdhPJxKT5lLlAU0ea3Q7LZ89x4jbSuAfgRmVhGDXaPLiEq9s3rBueOJkcXlJu3QTT/Vxd2royH/euMTFHmotx4euxM=
X-Received: by 2002:a05:6902:114c:b0:641:87a7:da90 with SMTP id
 p12-20020a056902114c00b0064187a7da90mr17410956ybu.561.1653203409115; Sun, 22
 May 2022 00:10:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PubV7v=UPCXCJrYfApoZ=KXuhbOQRneeeJA6GZsP5A9Zw@mail.gmail.com>
 <CAHKPiO6ZTc6n0Zf9=tFfmF1b2=DG3o0vt1haeTZfV8rhyRNQzA@mail.gmail.com>
In-Reply-To: <CAHKPiO6ZTc6n0Zf9=tFfmF1b2=DG3o0vt1haeTZfV8rhyRNQzA@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Sun, 22 May 2022 11:39:57 +0430
Message-ID: <CAA=S3PugAPwcQ-ZFX-+yyF_Cewqa+jPMLJ73KxcN3Hn+hH3SKA@mail.gmail.com>
To: Jeffrey Cuenco <jcuenco@ucsd.edu>
Content-Type: multipart/mixed; boundary="000000000000f14c6305df946908"
Message-ID-Hash: NXPBSGVK3XK25FN7NURXLLESRLMEEMAQ
X-Message-ID-Hash: NXPBSGVK3XK25FN7NURXLLESRLMEEMAQ
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's means ce_clk in orginal USRP blocks? as it is not in rfnoc-example ....
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NXPBSGVK3XK25FN7NURXLLESRLMEEMAQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000f14c6305df946908
Content-Type: multipart/alternative; boundary="000000000000f14c6305df946906"

--000000000000f14c6305df946906
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is great, thank you so much!  But for gain example according
to original RFNOC block, I added ce clock to my module...bitstream is
generated successfully. but in Gnuradio block does not work correctly...
 Error in Gnuradio:
gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO=
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO

I attached rfnoc_block_gain.v file and noc_shell_gain.v and  gain.yml. Can
you examine which snippet of my code has a bug or the wrong in ce clock?
Can you share a gain example that work correctly in Gnuradio and UHD
4.1.0.5.

thanks in advance


On Sat, May 21, 2022 at 11:04 PM Jeffrey Cuenco <jcuenco@ucsd.edu> wrote:

> Hello,
>
> I am also currently developing with UHD v4.1.0.5 and the default verilog
> template code generated by *rfnoc_mod_tool *does not automatically
> include ce_clk.
>
> If you would like to use ce_clk you can use the *rfnoc_create_verilog* to=
ol
> to regenerate and customize the verilog code from the template with
> parameters you specify in your block .YML file.
>
> Example:
>
> python3
> $PATH_TO_UHD_DIR/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c
> $PATH_TO_BLOCK_YML/yourblock.yml -d $DESIRED_PATH/rfnoc_block_yourblock
>
> If you are more interested in as to what the various clocks are intended
> to be used for, the general explanation is that certain parts of RFNoC ar=
e
> designed to operate at the primary bus clock of the USRP, yet one's logic
> may need to operate at a different clock, especially if it was designed t=
o
> operate at a specific frequency... so the customizability is built into
> RFNoC.
>
> The following RFNoC 4 Workshop video may help provide more of a deep-dive=
:
> https://www.youtube.com/watch?v=3DM9ntwQie9vs
>
> There are also a few other slide materials (some from RFNoC 3 but are
> still useful). Recommend going into the RFNoC 4 Migration Guide as it
> discusses the differences if you have prior experience working with RFNoC=
 3
>
> Slides: Part 1: Overview of RFNoC 4 -
> https://kb.ettus.com/images/5/5b/rfno...
> <https://www.youtube.com/redirect?event=3Dvideo_description&redir_token=
=3DQUFFLUhqbkZQeUJnei1iS1hkYTcyTnUwclVOOFZKMEJtZ3xBQ3Jtc0tuNnk0dlZHdjYxUXkx=
ZzFPd2I1dnBmM2NobFRkbG9hckd0VU0yaGc2MzREeWhzNE10c25GVUxSaE9Rc0FGb2Q4em1waUp=
hOWZxbkZ5TGh6NHpqVjRYODRqcW5fU3ZmVzVIaWtGZ1lPUlZaaTdNTmxERQ&q=3Dhttps%3A%2F=
%2Fkb.ettus.com%2Fimages%2F5%2F5b%2Frfnoc4_workshop_slides_2020_part_1.pdf&=
v=3DM9ntwQie9vs>
> Part 2: Deep dive into RFNoC 4 - https://kb.ettus.com/images/e/e9/rfno...
> <https://www.youtube.com/redirect?event=3Dvideo_description&redir_token=
=3DQUFFLUhqbmJabXRUbGJhVHNzak4wVGhNeXVXc2h4RUpkQXxBQ3Jtc0tsNlJJNGJjY0VRSWJq=
LTNhenZoWUhoODZ1cGJYNEVyTFRPNjl5UURxVmRuYmVmQTktMnlrWmJzMksxS1Y5b0xxd2lTaFd=
oTUhyYWdQM1FHMHk4bkpRQ2ZXS3R3QTI0TXJNM0hwX3h2SU5LUnJZdHM0SQ&q=3Dhttps%3A%2F=
%2Fkb.ettus.com%2Fimages%2Fe%2Fe9%2Frfnoc4_workshop_slides_2020_part_2.pdf&=
v=3DM9ntwQie9vs>
> Useful Knowledge Base Application Notes: Getting Started with RFNoC in UH=
D
> 4.0 - https://kb.ettus.com/Getting_Started_...
> <https://www.youtube.com/redirect?event=3Dvideo_description&redir_token=
=3DQUFFLUhqa2d3MFBKZzJCUW5VRFd2cFlIalR6MGtCLTZmUXxBQ3Jtc0trY0pKOWNCamw5dmd2=
N2NMbFl5MHFXb2JVUEdWLVZNSWk2TkZRTy03X0FuRFo5aVdSdGtialVrLTN1T0lUSGNYTy1OaGR=
WOUh3T0NhdWV2dTF0LVljNkxlUFBvY0pqZ2RHLTkxUmIwZEdfcmczYjY3TQ&q=3Dhttps%3A%2F=
%2Fkb.ettus.com%2FGetting_Started_with_RFNoC_in_UHD_4.0&v=3DM9ntwQie9vs>
> RFNoC 4 Migration Guide - https://kb.ettus.com/RFNoC_4_Migratio...
> <https://www.youtube.com/redirect?event=3Dvideo_description&redir_token=
=3DQUFFLUhqbkhKQ09JV3gyQXplRGo2X29ibXR1bXFHUENUUXxBQ3Jtc0ttZV9ma1VZU2RDNWhp=
NEUxM0FDSWxiQTZwS0V2RHpMalRkWnZ6VVAtUUZXOWk1T0REWE5WMDVwcXM5QlNFRGhLSkNGY3d=
lRkxYZ1NzTHVDSWZJTFhlUE83dG9KbzdiWUsyMXlFUmVrMXVQUTNzOUsyOA&q=3Dhttps%3A%2F=
%2Fkb.ettus.com%2FRFNoC_4_Migration_Guide&v=3DM9ntwQie9vs>
> Other useful videos: Exploring RFNoC 4 with the UHD Python API -
> https://youtu.be/fbcxm7f-Tj0
> <https://www.youtube.com/watch?v=3Dfbcxm7f-Tj0&t=3D0s> RFNoC 3 workshop v=
ideo
> - https://youtu.be/VbODcrmpLaU
> <https://www.youtube.com/watch?v=3DVbODcrmpLaU&t=3D0s>
>
> Hope this helps,
> -Jeff
>
> On Sat, May 21, 2022 at 2:33 AM sp h <stackprogramer@gmail.com> wrote:
>
>> when I examine RFNOC block that is in the below path, I am faced with a
>> wire ce_clk and ce_rst, but in rfnoc-example there is not a ce_clk.
>>
>> uhd-4.1.0.5/fpga/usrp3/lib/rfnoc/blocks
>>
>> Can anyone guide me ce clocks?  why instead using rfnoc_chdr clk,
>> original blocks uses ce clock?
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000f14c6305df946906
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is great, thank you so much!=C2=A0 But for gain examp=
le according to=C2=A0original=C2=A0RFNOC block, I added ce clock to my modu=
le...bitstream is generated successfully. but in Gnuradio block does not wo=
rk correctly...<br><div>=C2=A0Error in Gnuradio:</div><div>gr::log :DEBUG: =
rfnoc_rx_streamer0 - Committing graph...<br>gr::log :DEBUG: rfnoc_rx_stream=
er0 - Sending start stream command...<br>[WARNING] [0/Radio#0] Attempting t=
o set tick rate to 0. Skipping.<br>OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO=
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO=
OOOOOOOOOOOOOOOOOOO<br></div><div>=C2=A0</div><div>I attached=C2=A0rfnoc_bl=
ock_gain.v file and=C2=A0noc_shell_gain.v and=C2=A0=C2=A0gain.yml. Can you =
examine which snippet of my code has a bug or the=C2=A0wrong in ce clock? C=
an you share a gain example that work correctly=C2=A0in Gnuradio and UHD 4.=
1.0.5.</div><div><br></div><div>thanks in advance</div><div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sa=
t, May 21, 2022 at 11:04 PM Jeffrey Cuenco &lt;<a href=3D"mailto:jcuenco@uc=
sd.edu">jcuenco@ucsd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hello,<div><br></=
div><div>I am also currently developing with UHD v4.1.0.5 and the default v=
erilog template code generated by <b>rfnoc_mod_tool </b>does not automatica=
lly include ce_clk.</div><div><br></div><div>If you would like to use ce_cl=
k you can use the <b>rfnoc_create_verilog</b>=C2=A0tool to regenerate and c=
ustomize the verilog code from the template with parameters you specify in =
your block .YML file.</div><div><br></div><div>Example:</div><div><br></div=
><div>python3 $PATH_TO_UHD_DIR/host/utils/rfnoc_blocktool/rfnoc_create_veri=
log.py -c $PATH_TO_BLOCK_YML/yourblock.yml -d $DESIRED_PATH/rfnoc_block_you=
rblock<br></div><div><br></div><div>If you are more interested in as to wha=
t the various clocks are intended to be used for, the general explanation i=
s that certain parts of RFNoC are designed to operate at the primary bus cl=
ock of the USRP, yet one&#39;s logic may need to operate at a different clo=
ck, especially if it was designed to operate at a specific frequency... so =
the customizability is built into RFNoC.</div><div><br></div><div>The follo=
wing RFNoC 4 Workshop video may help provide more of a deep-dive:</div><div=
><a href=3D"https://www.youtube.com/watch?v=3DM9ntwQie9vs" target=3D"_blank=
">https://www.youtube.com/watch?v=3DM9ntwQie9vs</a><br></div><div><br></div=
><div>There are also a few other slide=C2=A0materials (some from RFNoC 3 bu=
t are still useful). Recommend going into the RFNoC 4 Migration Guide as it=
 discusses the differences if you have prior experience working with RFNoC =
3</div><div><br></div><div><span dir=3D"auto" style=3D"margin:0px;padding:0=
px;border:0px;background:rgb(249,249,249);color:rgb(3,3,3);font-family:Robo=
to,Arial,sans-serif;font-size:14px;white-space:pre-wrap">Slides:
Part 1: Overview of RFNoC 4 - </span><a href=3D"https://www.youtube.com/red=
irect?event=3Dvideo_description&amp;redir_token=3DQUFFLUhqbkZQeUJnei1iS1hkY=
TcyTnUwclVOOFZKMEJtZ3xBQ3Jtc0tuNnk0dlZHdjYxUXkxZzFPd2I1dnBmM2NobFRkbG9hckd0=
VU0yaGc2MzREeWhzNE10c25GVUxSaE9Rc0FGb2Q4em1waUphOWZxbkZ5TGh6NHpqVjRYODRqcW5=
fU3ZmVzVIaWtGZ1lPUlZaaTdNTmxERQ&amp;q=3Dhttps%3A%2F%2Fkb.ettus.com%2Fimages=
%2F5%2F5b%2Frfnoc4_workshop_slides_2020_part_1.pdf&amp;v=3DM9ntwQie9vs" rel=
=3D"nofollow" dir=3D"auto" style=3D"font-family:Roboto,Arial,sans-serif;fon=
t-size:14px;white-space:pre-wrap;background-color:rgb(249,249,249)" target=
=3D"_blank">https://kb.ettus.com/images/5/5b/rfno...</a><span dir=3D"auto" =
style=3D"margin:0px;padding:0px;border:0px;background:rgb(249,249,249);colo=
r:rgb(3,3,3);font-family:Roboto,Arial,sans-serif;font-size:14px;white-space=
:pre-wrap">
Part 2: Deep dive into RFNoC 4 - </span><a href=3D"https://www.youtube.com/=
redirect?event=3Dvideo_description&amp;redir_token=3DQUFFLUhqbmJabXRUbGJhVH=
Nzak4wVGhNeXVXc2h4RUpkQXxBQ3Jtc0tsNlJJNGJjY0VRSWJqLTNhenZoWUhoODZ1cGJYNEVyT=
FRPNjl5UURxVmRuYmVmQTktMnlrWmJzMksxS1Y5b0xxd2lTaFdoTUhyYWdQM1FHMHk4bkpRQ2ZX=
S3R3QTI0TXJNM0hwX3h2SU5LUnJZdHM0SQ&amp;q=3Dhttps%3A%2F%2Fkb.ettus.com%2Fima=
ges%2Fe%2Fe9%2Frfnoc4_workshop_slides_2020_part_2.pdf&amp;v=3DM9ntwQie9vs" =
rel=3D"nofollow" dir=3D"auto" style=3D"font-family:Roboto,Arial,sans-serif;=
font-size:14px;white-space:pre-wrap;background-color:rgb(249,249,249)" targ=
et=3D"_blank">https://kb.ettus.com/images/e/e9/rfno...</a><span dir=3D"auto=
" style=3D"margin:0px;padding:0px;border:0px;background:rgb(249,249,249);co=
lor:rgb(3,3,3);font-family:Roboto,Arial,sans-serif;font-size:14px;white-spa=
ce:pre-wrap">

Useful Knowledge Base Application Notes:
Getting Started with RFNoC in UHD 4.0 - </span><a href=3D"https://www.youtu=
be.com/redirect?event=3Dvideo_description&amp;redir_token=3DQUFFLUhqa2d3MFB=
KZzJCUW5VRFd2cFlIalR6MGtCLTZmUXxBQ3Jtc0trY0pKOWNCamw5dmd2N2NMbFl5MHFXb2JVUE=
dWLVZNSWk2TkZRTy03X0FuRFo5aVdSdGtialVrLTN1T0lUSGNYTy1OaGRWOUh3T0NhdWV2dTF0L=
VljNkxlUFBvY0pqZ2RHLTkxUmIwZEdfcmczYjY3TQ&amp;q=3Dhttps%3A%2F%2Fkb.ettus.co=
m%2FGetting_Started_with_RFNoC_in_UHD_4.0&amp;v=3DM9ntwQie9vs" rel=3D"nofol=
low" dir=3D"auto" style=3D"font-family:Roboto,Arial,sans-serif;font-size:14=
px;white-space:pre-wrap;background-color:rgb(249,249,249)" target=3D"_blank=
">https://kb.ettus.com/Getting_Started_...</a><span dir=3D"auto" style=3D"m=
argin:0px;padding:0px;border:0px;background:rgb(249,249,249);color:rgb(3,3,=
3);font-family:Roboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap"=
>
RFNoC 4 Migration Guide - </span><a href=3D"https://www.youtube.com/redirec=
t?event=3Dvideo_description&amp;redir_token=3DQUFFLUhqbkhKQ09JV3gyQXplRGo2X=
29ibXR1bXFHUENUUXxBQ3Jtc0ttZV9ma1VZU2RDNWhpNEUxM0FDSWxiQTZwS0V2RHpMalRkWnZ6=
VVAtUUZXOWk1T0REWE5WMDVwcXM5QlNFRGhLSkNGY3dlRkxYZ1NzTHVDSWZJTFhlUE83dG9Kbzd=
iWUsyMXlFUmVrMXVQUTNzOUsyOA&amp;q=3Dhttps%3A%2F%2Fkb.ettus.com%2FRFNoC_4_Mi=
gration_Guide&amp;v=3DM9ntwQie9vs" rel=3D"nofollow" dir=3D"auto" style=3D"f=
ont-family:Roboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap;back=
ground-color:rgb(249,249,249)" target=3D"_blank">https://kb.ettus.com/RFNoC=
_4_Migratio...</a><span dir=3D"auto" style=3D"margin:0px;padding:0px;border=
:0px;background:rgb(249,249,249);color:rgb(3,3,3);font-family:Roboto,Arial,=
sans-serif;font-size:14px;white-space:pre-wrap">

Other useful videos:
Exploring RFNoC 4 with the UHD Python API - </span><a href=3D"https://www.y=
outube.com/watch?v=3Dfbcxm7f-Tj0&amp;t=3D0s" dir=3D"auto" style=3D"font-fam=
ily:Roboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap;background-=
color:rgb(249,249,249)" target=3D"_blank">https://youtu.be/fbcxm7f-Tj0</a><=
span dir=3D"auto" style=3D"margin:0px;padding:0px;border:0px;background:rgb=
(249,249,249);color:rgb(3,3,3);font-family:Roboto,Arial,sans-serif;font-siz=
e:14px;white-space:pre-wrap">
RFNoC 3 workshop video - </span><a href=3D"https://www.youtube.com/watch?v=
=3DVbODcrmpLaU&amp;t=3D0s" dir=3D"auto" style=3D"font-family:Roboto,Arial,s=
ans-serif;font-size:14px;white-space:pre-wrap;background-color:rgb(249,249,=
249)" target=3D"_blank">https://youtu.be/VbODcrmpLaU</a><br></div></div><di=
v><br></div>Hope this helps,<div>-Jeff</div><div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 21, 2022 at 2:33 AM =
sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stac=
kprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">when I examine RFNOC block that is in =
the=C2=A0below path, I am faced with a wire ce_clk and ce_rst, but in rfnoc=
-example there is not a ce_clk.<div><br><div>uhd-4.1.0.5/fpga/usrp3/lib/rfn=
oc/blocks<br></div></div><div><br></div><div>Can anyone guide me ce clocks?=
=C2=A0 why instead using rfnoc_chdr clk, original=C2=A0blocks uses ce clock=
?</div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div></div>
</blockquote></div>

--000000000000f14c6305df946906--

--000000000000f14c6305df946908
Content-Type: application/x-yaml; name="gain.yml"
Content-Disposition: attachment; filename="gain.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_l3gyl6bi0>
X-Attachment-Id: f_l3gyl6bi0

CnNjaGVtYTogcmZub2NfbW9kdG9vbF9hcmdzCm1vZHVsZV9uYW1lOiBnYWluCnZlcnNpb246IDEu
MApyZm5vY192ZXJzaW9uOiAxLjAKY2hkcl93aWR0aDogNjQKbm9jX2lkOiAweDQ1MDY5RDQwCm1h
a2VmaWxlX3NyY3M6ICIvaG9tZS9zcC9Eb2N1bWVudHMvcmZub2MtdHJhbnNjZWl2ZXIvcmZub2Mv
ZnBnYS9yZm5vY19ibG9ja19nYWluL01ha2VmaWxlLnNyY3MiCgpjbG9ja3M6CiAgLSBuYW1lOiBy
Zm5vY19jaGRyCiAgICBmcmVxOiAiW10iCiAgLSBuYW1lOiByZm5vY19jdHJsCiAgICBmcmVxOiAi
W10iCiAgLSBuYW1lOiBjZQogICAgZnJlcTogIltdIgoKY29udHJvbDoKICBzd19pZmFjZTogbm9j
c2NyaXB0CiAgZnBnYV9pZmFjZTogY3RybHBvcnQKICBpbnRlcmZhY2VfZGlyZWN0aW9uOiBzbGF2
ZQogIGZpZm9fZGVwdGg6IDMyCiAgY2xrX2RvbWFpbjogY2UKICBjdHJscG9ydDoKICAgIGJ5dGVf
bW9kZTogRmFsc2UKICAgIHRpbWVkOiBGYWxzZQogICAgaGFzX3N0YXR1czogRmFsc2UKCmRhdGE6
CiAgZnBnYV9pZmFjZTogYXhpc19kYXRhCiAgY2xrX2RvbWFpbjogY2UKICBpbnB1dHM6CiAgICBp
bjoKICAgICAgaXRlbV93aWR0aDogMzIKICAgICAgbmlwYzogMQogICAgICBpbmZvX2ZpZm9fZGVw
dGg6IDMyCiAgICAgIHBheWxvYWRfZmlmb19kZXB0aDogMzIKICAgICAgZm9ybWF0OiBpbnQzMgog
ICAgICBtZGF0YV9zaWc6IH4KICBvdXRwdXRzOgogICAgb3V0OgogICAgICBpdGVtX3dpZHRoOiAz
MgogICAgICBuaXBjOiAxCiAgICAgIGluZm9fZmlmb19kZXB0aDogMzIKICAgICAgcGF5bG9hZF9m
aWZvX2RlcHRoOiAzMgogICAgICBmb3JtYXQ6IGludDMyCiAgICAgIG1kYXRhX3NpZzogfgo=
--000000000000f14c6305df946908
Content-Type: text/x-verilog; charset="US-ASCII"; name="noc_shell_gain.v"
Content-Disposition: attachment; filename="noc_shell_gain.v"
Content-Transfer-Encoding: base64
Content-ID: <f_l3gyl6bt1>
X-Attachment-Id: f_l3gyl6bt1

Ci8vCi8vIE1vZHVsZTogbm9jX3NoZWxsX2dhaW4KLy8KLy8gRGVzY3JpcHRpb246Ci8vCi8vICAg
VGhpcyBpcyBhIHRvb2wtZ2VuZXJhdGVkIE5vQy1zaGVsbCBmb3IgdGhlIGdhaW4gYmxvY2suCi8v
ICAgU2VlIHRoZSBSRk5vQyBzcGVjaWZpY2F0aW9uIGZvciBtb3JlIGluZm9ybWF0aW9uIGFib3V0
IE5vQyBzaGVsbHMuCi8vCi8vIFBhcmFtZXRlcnM6Ci8vCi8vICAgVEhJU19QT1JUSUQgOiBDb250
cm9sIGNyb3NzYmFyIHBvcnQgdG8gd2hpY2ggdGhpcyBibG9jayBpcyBjb25uZWN0ZWQKLy8gICBD
SERSX1cgICAgICA6IEFYSVMtQ0hEUiBkYXRhIGJ1cyB3aWR0aAovLyAgIE1UVSAgICAgICAgIDog
TWF4aW11bSB0cmFuc21pc3Npb24gdW5pdCAoaS5lLiwgbWF4aW11bSBwYWNrZXQgc2l6ZSBpbgov
LwoKYGRlZmF1bHRfbmV0dHlwZSBub25lCgoKbW9kdWxlIG5vY19zaGVsbF9nYWluICMoCiAgcGFy
YW1ldGVyIFs5OjBdIFRISVNfUE9SVElEICAgICA9IDEwJ2QwLAogIHBhcmFtZXRlciAgICAgICBD
SERSX1cgICAgICAgICAgPSA2NCwKICBwYXJhbWV0ZXIgWzU6MF0gTVRVICAgICAgICAgICAgID0g
MTAKKSAoCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAvLyBGcmFtZXdvcmsgSW50ZXJmYWNl
CiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgLy8gUkZOb0MgRnJhbWV3b3JrIENsb2Nrcwog
IGlucHV0ICB3aXJlIHJmbm9jX2NoZHJfY2xrLAogIGlucHV0ICB3aXJlIHJmbm9jX2N0cmxfY2xr
LAogIGlucHV0ICB3aXJlIGNlX2NsaywKCgogIC8vIE5vQyBTaGVsbCBHZW5lcmF0ZWQgUmVzZXRz
CiAgb3V0cHV0IHdpcmUgcmZub2NfY2hkcl9yc3QsCiAgb3V0cHV0IHdpcmUgcmZub2NfY3RybF9y
c3QsCiAgb3V0cHV0IHdpcmUgY2VfcnN0LAoKCiAgLy8gUkZOb0MgQmFja2VuZCBJbnRlcmZhY2UK
ICBpbnB1dCAgd2lyZSBbNTExOjBdICAgICAgICAgIHJmbm9jX2NvcmVfY29uZmlnLAogIG91dHB1
dCB3aXJlIFs1MTE6MF0gICAgICAgICAgcmZub2NfY29yZV9zdGF0dXMsCgogIC8vIEFYSVMtQ0hE
UiBJbnB1dCBQb3J0cyAoZnJvbSBmcmFtZXdvcmspCiAgaW5wdXQgIHdpcmUgWygxKSpDSERSX1ct
MTowXSBzX3Jmbm9jX2NoZHJfdGRhdGEsCiAgaW5wdXQgIHdpcmUgWygxKS0xOjBdICAgICAgICBz
X3Jmbm9jX2NoZHJfdGxhc3QsCiAgaW5wdXQgIHdpcmUgWygxKS0xOjBdICAgICAgICBzX3Jmbm9j
X2NoZHJfdHZhbGlkLAogIG91dHB1dCB3aXJlIFsoMSktMTowXSAgICAgICAgc19yZm5vY19jaGRy
X3RyZWFkeSwKICAvLyBBWElTLUNIRFIgT3V0cHV0IFBvcnRzICh0byBmcmFtZXdvcmspCiAgb3V0
cHV0IHdpcmUgWygxKSpDSERSX1ctMTowXSBtX3Jmbm9jX2NoZHJfdGRhdGEsCiAgb3V0cHV0IHdp
cmUgWygxKS0xOjBdICAgICAgICBtX3Jmbm9jX2NoZHJfdGxhc3QsCiAgb3V0cHV0IHdpcmUgWygx
KS0xOjBdICAgICAgICBtX3Jmbm9jX2NoZHJfdHZhbGlkLAogIGlucHV0ICB3aXJlIFsoMSktMTow
XSAgICAgICAgbV9yZm5vY19jaGRyX3RyZWFkeSwKCiAgLy8gQVhJUy1DdHJsIENvbnRyb2wgSW5w
dXQgUG9ydCAoZnJvbSBmcmFtZXdvcmspCiAgaW5wdXQgIHdpcmUgWzMxOjBdICAgICAgICAgICBz
X3Jmbm9jX2N0cmxfdGRhdGEsCiAgaW5wdXQgIHdpcmUgICAgICAgICAgICAgICAgICBzX3Jmbm9j
X2N0cmxfdGxhc3QsCiAgaW5wdXQgIHdpcmUgICAgICAgICAgICAgICAgICBzX3Jmbm9jX2N0cmxf
dHZhbGlkLAogIG91dHB1dCB3aXJlICAgICAgICAgICAgICAgICAgc19yZm5vY19jdHJsX3RyZWFk
eSwKICAvLyBBWElTLUN0cmwgQ29udHJvbCBPdXRwdXQgUG9ydCAodG8gZnJhbWV3b3JrKQogIG91
dHB1dCB3aXJlIFszMTowXSAgICAgICAgICAgbV9yZm5vY19jdHJsX3RkYXRhLAogIG91dHB1dCB3
aXJlICAgICAgICAgICAgICAgICAgbV9yZm5vY19jdHJsX3RsYXN0LAogIG91dHB1dCB3aXJlICAg
ICAgICAgICAgICAgICAgbV9yZm5vY19jdHJsX3R2YWxpZCwKICBpbnB1dCAgd2lyZSAgICAgICAg
ICAgICAgICAgIG1fcmZub2NfY3RybF90cmVhZHksCgogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAgLy8gQ2xpZW50IEludGVyZmFjZQogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIC8vIEN0
cmxQb3J0IENsb2NrIGFuZCBSZXNldAogIG91dHB1dCB3aXJlICAgICAgICAgICAgICAgY3RybHBv
cnRfY2xrLAogIG91dHB1dCB3aXJlICAgICAgICAgICAgICAgY3RybHBvcnRfcnN0LAogIC8vIEN0
cmxQb3J0IE1hc3RlcgogIG91dHB1dCB3aXJlICAgICAgICAgICAgICAgbV9jdHJscG9ydF9yZXFf
d3IsCiAgb3V0cHV0IHdpcmUgICAgICAgICAgICAgICBtX2N0cmxwb3J0X3JlcV9yZCwKICBvdXRw
dXQgd2lyZSBbMTk6MF0gICAgICAgIG1fY3RybHBvcnRfcmVxX2FkZHIsCiAgb3V0cHV0IHdpcmUg
WzMxOjBdICAgICAgICBtX2N0cmxwb3J0X3JlcV9kYXRhLAogIGlucHV0ICB3aXJlICAgICAgICAg
ICAgICAgbV9jdHJscG9ydF9yZXNwX2FjaywKICBpbnB1dCAgd2lyZSBbMzE6MF0gICAgICAgIG1f
Y3RybHBvcnRfcmVzcF9kYXRhLAoKICAvLyBBWEktU3RyZWFtIFBheWxvYWQgQ29udGV4dCBDbG9j
ayBhbmQgUmVzZXQKICBvdXRwdXQgd2lyZSAgICAgICAgICAgICAgIGF4aXNfZGF0YV9jbGssCiAg
b3V0cHV0IHdpcmUgICAgICAgICAgICAgICBheGlzX2RhdGFfcnN0LAogIC8vIFBheWxvYWQgU3Ry
ZWFtIHRvIFVzZXIgTG9naWM6IGluCiAgb3V0cHV0IHdpcmUgWzMyKjEtMTowXSAgICBtX2luX3Bh
eWxvYWRfdGRhdGEsCiAgb3V0cHV0IHdpcmUgWzEtMTowXSAgICAgICBtX2luX3BheWxvYWRfdGtl
ZXAsCiAgb3V0cHV0IHdpcmUgICAgICAgICAgICAgICBtX2luX3BheWxvYWRfdGxhc3QsCiAgb3V0
cHV0IHdpcmUgICAgICAgICAgICAgICBtX2luX3BheWxvYWRfdHZhbGlkLAogIGlucHV0ICB3aXJl
ICAgICAgICAgICAgICAgbV9pbl9wYXlsb2FkX3RyZWFkeSwKICAvLyBDb250ZXh0IFN0cmVhbSB0
byBVc2VyIExvZ2ljOiBpbgogIG91dHB1dCB3aXJlIFtDSERSX1ctMTowXSAgbV9pbl9jb250ZXh0
X3RkYXRhLAogIG91dHB1dCB3aXJlIFszOjBdICAgICAgICAgbV9pbl9jb250ZXh0X3R1c2VyLAog
IG91dHB1dCB3aXJlICAgICAgICAgICAgICAgbV9pbl9jb250ZXh0X3RsYXN0LAogIG91dHB1dCB3
aXJlICAgICAgICAgICAgICAgbV9pbl9jb250ZXh0X3R2YWxpZCwKICBpbnB1dCAgd2lyZSAgICAg
ICAgICAgICAgIG1faW5fY29udGV4dF90cmVhZHksCiAgLy8gUGF5bG9hZCBTdHJlYW0gZnJvbSBV
c2VyIExvZ2ljOiBvdXQKICBpbnB1dCAgd2lyZSBbMzIqMS0xOjBdICAgIHNfb3V0X3BheWxvYWRf
dGRhdGEsCiAgaW5wdXQgIHdpcmUgWzA6MF0gICAgICAgICBzX291dF9wYXlsb2FkX3RrZWVwLAog
IGlucHV0ICB3aXJlICAgICAgICAgICAgICAgc19vdXRfcGF5bG9hZF90bGFzdCwKICBpbnB1dCAg
d2lyZSAgICAgICAgICAgICAgIHNfb3V0X3BheWxvYWRfdHZhbGlkLAogIG91dHB1dCB3aXJlICAg
ICAgICAgICAgICAgc19vdXRfcGF5bG9hZF90cmVhZHksCiAgLy8gQ29udGV4dCBTdHJlYW0gZnJv
bSBVc2VyIExvZ2ljOiBvdXQKICBpbnB1dCAgd2lyZSBbQ0hEUl9XLTE6MF0gIHNfb3V0X2NvbnRl
eHRfdGRhdGEsCiAgaW5wdXQgIHdpcmUgWzM6MF0gICAgICAgICBzX291dF9jb250ZXh0X3R1c2Vy
LAogIGlucHV0ICB3aXJlICAgICAgICAgICAgICAgc19vdXRfY29udGV4dF90bGFzdCwKICBpbnB1
dCAgd2lyZSAgICAgICAgICAgICAgIHNfb3V0X2NvbnRleHRfdHZhbGlkLAogIG91dHB1dCB3aXJl
ICAgICAgICAgICAgICAgc19vdXRfY29udGV4dF90cmVhZHkKKTsKCiAgLy8tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KICAvLyAgQmFja2VuZCBJbnRlcmZhY2UKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICB3
aXJlICAgICAgICAgZGF0YV9pX2ZsdXNoX2VuOwogIHdpcmUgWzMxOjBdICBkYXRhX2lfZmx1c2hf
dGltZW91dDsKICB3aXJlIFs2MzowXSAgZGF0YV9pX2ZsdXNoX2FjdGl2ZTsKICB3aXJlIFs2Mzow
XSAgZGF0YV9pX2ZsdXNoX2RvbmU7CiAgd2lyZSAgICAgICAgIGRhdGFfb19mbHVzaF9lbjsKICB3
aXJlIFszMTowXSAgZGF0YV9vX2ZsdXNoX3RpbWVvdXQ7CiAgd2lyZSBbNjM6MF0gIGRhdGFfb19m
bHVzaF9hY3RpdmU7CiAgd2lyZSBbNjM6MF0gIGRhdGFfb19mbHVzaF9kb25lOwoKICBiYWNrZW5k
X2lmYWNlICMoCiAgICAuTk9DX0lEICAgICAgICAoMzInaDQ1MDY5RDQwKSwKICAgIC5OVU1fREFU
QV9JICAgICgxKSwKICAgIC5OVU1fREFUQV9PICAgICgxKSwKICAgIC5DVFJMX0ZJRk9TSVpFICgk
Y2xvZzIoMzIpKSwKICAgIC5NVFUgICAgICAgICAgIChNVFUpCiAgKSBiYWNrZW5kX2lmYWNlX2kg
KAogICAgLnJmbm9jX2NoZHJfY2xrICAgICAgIChyZm5vY19jaGRyX2NsayksCiAgICAucmZub2Nf
Y2hkcl9yc3QgICAgICAgKHJmbm9jX2NoZHJfcnN0KSwKICAgIC5yZm5vY19jdHJsX2NsayAgICAg
ICAocmZub2NfY3RybF9jbGspLAogICAgLnJmbm9jX2N0cmxfcnN0ICAgICAgIChyZm5vY19jdHJs
X3JzdCksCiAgICAucmZub2NfY29yZV9jb25maWcgICAgKHJmbm9jX2NvcmVfY29uZmlnKSwKICAg
IC5yZm5vY19jb3JlX3N0YXR1cyAgICAocmZub2NfY29yZV9zdGF0dXMpLAogICAgLmRhdGFfaV9m
bHVzaF9lbiAgICAgIChkYXRhX2lfZmx1c2hfZW4pLAogICAgLmRhdGFfaV9mbHVzaF90aW1lb3V0
IChkYXRhX2lfZmx1c2hfdGltZW91dCksCiAgICAuZGF0YV9pX2ZsdXNoX2FjdGl2ZSAgKGRhdGFf
aV9mbHVzaF9hY3RpdmUpLAogICAgLmRhdGFfaV9mbHVzaF9kb25lICAgIChkYXRhX2lfZmx1c2hf
ZG9uZSksCiAgICAuZGF0YV9vX2ZsdXNoX2VuICAgICAgKGRhdGFfb19mbHVzaF9lbiksCiAgICAu
ZGF0YV9vX2ZsdXNoX3RpbWVvdXQgKGRhdGFfb19mbHVzaF90aW1lb3V0KSwKICAgIC5kYXRhX29f
Zmx1c2hfYWN0aXZlICAoZGF0YV9vX2ZsdXNoX2FjdGl2ZSksCiAgICAuZGF0YV9vX2ZsdXNoX2Rv
bmUgICAgKGRhdGFfb19mbHVzaF9kb25lKQogICk7CiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAv
LyAgUmVzZXQgR2VuZXJhdGlvbgogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIHdpcmUgY2VfcnN0
X3B1bHNlOwoKICBwdWxzZV9zeW5jaHJvbml6ZXIgIyguTU9ERSAoIlBPU0VER0UiKSkgcHVsc2Vf
c3luY2hyb25pemVyX2NlICgKICAgIC5jbGtfYShyZm5vY19jaGRyX2NsayksIC5yc3RfYSgxJ2Iw
KSwgLnB1bHNlX2EgKHJmbm9jX2NoZHJfcnN0KSwgLmJ1c3lfYSAoKSwKICAgIC5jbGtfYihjZV9j
bGspLCAucHVsc2VfYiAoY2VfcnN0X3B1bHNlKQogICk7CgogIHB1bHNlX3N0cmV0Y2hfbWluICMo
LkxFTkdUSCgzMikpIHB1bHNlX3N0cmV0Y2hfbWluX2NlICgKICAgIC5jbGsoY2VfY2xrKSwgLnJz
dCgxJ2IwKSwKICAgIC5wdWxzZV9pbihjZV9yc3RfcHVsc2UpLCAucHVsc2Vfb3V0KGNlX3JzdCkK
ICApOwoKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIC8vICBDb250cm9sIFBhdGgKICAvLy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICBhc3NpZ24gY3RybHBvcnRfY2xrID0gY2VfY2xrOwogIGFzc2lnbiBj
dHJscG9ydF9yc3QgPSBjZV9yc3Q7CgogIGN0cmxwb3J0X2VuZHBvaW50ICMoCiAgICAuVEhJU19Q
T1JUSUQgICAgICAoVEhJU19QT1JUSUQpLAogICAgLlNZTkNfQ0xLUyAgICAgICAgKDApLAogICAg
LkFYSVNfQ1RSTF9NU1RfRU4gKDApLAogICAgLkFYSVNfQ1RSTF9TTFZfRU4gKDEpLAogICAgLlNM
QVZFX0ZJRk9fU0laRSAgKCRjbG9nMigzMikpCiAgKSBjdHJscG9ydF9lbmRwb2ludF9pICgKICAg
IC5yZm5vY19jdHJsX2NsayAgICAgICAgICAgIChyZm5vY19jdHJsX2NsayksCiAgICAucmZub2Nf
Y3RybF9yc3QgICAgICAgICAgICAocmZub2NfY3RybF9yc3QpLAogICAgLmN0cmxwb3J0X2NsayAg
ICAgICAgICAgICAgKGN0cmxwb3J0X2NsayksCiAgICAuY3RybHBvcnRfcnN0ICAgICAgICAgICAg
ICAoY3RybHBvcnRfcnN0KSwKICAgIC5zX3Jmbm9jX2N0cmxfdGRhdGEgICAgICAgIChzX3Jmbm9j
X2N0cmxfdGRhdGEpLAogICAgLnNfcmZub2NfY3RybF90bGFzdCAgICAgICAgKHNfcmZub2NfY3Ry
bF90bGFzdCksCiAgICAuc19yZm5vY19jdHJsX3R2YWxpZCAgICAgICAoc19yZm5vY19jdHJsX3R2
YWxpZCksCiAgICAuc19yZm5vY19jdHJsX3RyZWFkeSAgICAgICAoc19yZm5vY19jdHJsX3RyZWFk
eSksCiAgICAubV9yZm5vY19jdHJsX3RkYXRhICAgICAgICAobV9yZm5vY19jdHJsX3RkYXRhKSwK
ICAgIC5tX3Jmbm9jX2N0cmxfdGxhc3QgICAgICAgIChtX3Jmbm9jX2N0cmxfdGxhc3QpLAogICAg
Lm1fcmZub2NfY3RybF90dmFsaWQgICAgICAgKG1fcmZub2NfY3RybF90dmFsaWQpLAogICAgLm1f
cmZub2NfY3RybF90cmVhZHkgICAgICAgKG1fcmZub2NfY3RybF90cmVhZHkpLAogICAgLm1fY3Ry
bHBvcnRfcmVxX3dyICAgICAgICAgKG1fY3RybHBvcnRfcmVxX3dyKSwKICAgIC5tX2N0cmxwb3J0
X3JlcV9yZCAgICAgICAgIChtX2N0cmxwb3J0X3JlcV9yZCksCiAgICAubV9jdHJscG9ydF9yZXFf
YWRkciAgICAgICAobV9jdHJscG9ydF9yZXFfYWRkciksCiAgICAubV9jdHJscG9ydF9yZXFfZGF0
YSAgICAgICAobV9jdHJscG9ydF9yZXFfZGF0YSksCiAgICAubV9jdHJscG9ydF9yZXFfYnl0ZV9l
biAgICAoKSwKICAgIC5tX2N0cmxwb3J0X3JlcV9oYXNfdGltZSAgICgpLAogICAgLm1fY3RybHBv
cnRfcmVxX3RpbWUgICAgICAgKCksCiAgICAubV9jdHJscG9ydF9yZXNwX2FjayAgICAgICAobV9j
dHJscG9ydF9yZXNwX2FjayksCiAgICAubV9jdHJscG9ydF9yZXNwX3N0YXR1cyAgICAoMidiMCks
CiAgICAubV9jdHJscG9ydF9yZXNwX2RhdGEgICAgICAobV9jdHJscG9ydF9yZXNwX2RhdGEpLAog
ICAgLnNfY3RybHBvcnRfcmVxX3dyICAgICAgICAgKDEnYjApLAogICAgLnNfY3RybHBvcnRfcmVx
X3JkICAgICAgICAgKDEnYjApLAogICAgLnNfY3RybHBvcnRfcmVxX2FkZHIgICAgICAgKDIwJ2Iw
KSwKICAgIC5zX2N0cmxwb3J0X3JlcV9wb3J0aWQgICAgICgxMCdiMCksCiAgICAuc19jdHJscG9y
dF9yZXFfcmVtX2VwaWQgICAoMTYnYjApLAogICAgLnNfY3RybHBvcnRfcmVxX3JlbV9wb3J0aWQg
KDEwJ2IwKSwKICAgIC5zX2N0cmxwb3J0X3JlcV9kYXRhICAgICAgICgzMidiMCksCiAgICAuc19j
dHJscG9ydF9yZXFfYnl0ZV9lbiAgICAoNCdoRiksCiAgICAuc19jdHJscG9ydF9yZXFfaGFzX3Rp
bWUgICAoMSdiMCksCiAgICAuc19jdHJscG9ydF9yZXFfdGltZSAgICAgICAoNjQnYjApLAogICAg
LnNfY3RybHBvcnRfcmVzcF9hY2sgICAgICAgKCksCiAgICAuc19jdHJscG9ydF9yZXNwX3N0YXR1
cyAgICAoKSwKICAgIC5zX2N0cmxwb3J0X3Jlc3BfZGF0YSAgICAgICgpCiAgKTsKCiAgLy8tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KICAvLyAgRGF0YSBQYXRoCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAg
Z2VudmFyIGk7CgogIGFzc2lnbiBheGlzX2RhdGFfY2xrID0gY2VfY2xrOwogIGFzc2lnbiBheGlz
X2RhdGFfcnN0ID0gY2VfcnN0OwoKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIC8vIElucHV0
IERhdGEgUGF0aHMKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBjaGRyX3RvX2F4aXNfcHls
ZF9jdHh0ICMoCiAgICAuQ0hEUl9XICAgICAgICAgICAgICAoQ0hEUl9XKSwKICAgIC5JVEVNX1cg
ICAgICAgICAgICAgICgzMiksCiAgICAuTklQQyAgICAgICAgICAgICAgICAoMSksCiAgICAuU1lO
Q19DTEtTICAgICAgICAgICAoMSksCiAgICAuQ09OVEVYVF9GSUZPX1NJWkUgICAoJGNsb2cyKDIp
KSwKICAgIC5QQVlMT0FEX0ZJRk9fU0laRSAgICgkY2xvZzIoMikpLAogICAgLkNPTlRFWFRfUFJF
RkVUQ0hfRU4gKDEpCiAgKSBjaGRyX3RvX2F4aXNfcHlsZF9jdHh0X2luX2luICgKICAgIC5heGlz
X2NoZHJfY2xrICAgICAgICAgKHJmbm9jX2NoZHJfY2xrKSwKICAgIC5heGlzX2NoZHJfcnN0ICAg
ICAgICAgKHJmbm9jX2NoZHJfcnN0KSwKICAgIC5heGlzX2RhdGFfY2xrICAgICAgICAgKGF4aXNf
ZGF0YV9jbGspLAogICAgLmF4aXNfZGF0YV9yc3QgICAgICAgICAoYXhpc19kYXRhX3JzdCksCiAg
ICAuc19heGlzX2NoZHJfdGRhdGEgICAgIChzX3Jmbm9jX2NoZHJfdGRhdGFbKDApKkNIRFJfVys6
Q0hEUl9XXSksCiAgICAuc19heGlzX2NoZHJfdGxhc3QgICAgIChzX3Jmbm9jX2NoZHJfdGxhc3Rb
MF0pLAogICAgLnNfYXhpc19jaGRyX3R2YWxpZCAgICAoc19yZm5vY19jaGRyX3R2YWxpZFswXSks
CiAgICAuc19heGlzX2NoZHJfdHJlYWR5ICAgIChzX3Jmbm9jX2NoZHJfdHJlYWR5WzBdKSwKICAg
IC5tX2F4aXNfcGF5bG9hZF90ZGF0YSAgKG1faW5fcGF5bG9hZF90ZGF0YSksCiAgICAubV9heGlz
X3BheWxvYWRfdGtlZXAgIChtX2luX3BheWxvYWRfdGtlZXApLAogICAgLm1fYXhpc19wYXlsb2Fk
X3RsYXN0ICAobV9pbl9wYXlsb2FkX3RsYXN0KSwKICAgIC5tX2F4aXNfcGF5bG9hZF90dmFsaWQg
KG1faW5fcGF5bG9hZF90dmFsaWQpLAogICAgLm1fYXhpc19wYXlsb2FkX3RyZWFkeSAobV9pbl9w
YXlsb2FkX3RyZWFkeSksCiAgICAubV9heGlzX2NvbnRleHRfdGRhdGEgIChtX2luX2NvbnRleHRf
dGRhdGEpLAogICAgLm1fYXhpc19jb250ZXh0X3R1c2VyICAobV9pbl9jb250ZXh0X3R1c2VyKSwK
ICAgIC5tX2F4aXNfY29udGV4dF90bGFzdCAgKG1faW5fY29udGV4dF90bGFzdCksCiAgICAubV9h
eGlzX2NvbnRleHRfdHZhbGlkIChtX2luX2NvbnRleHRfdHZhbGlkKSwKICAgIC5tX2F4aXNfY29u
dGV4dF90cmVhZHkgKG1faW5fY29udGV4dF90cmVhZHkpLAogICAgLmZsdXNoX2VuICAgICAgICAg
ICAgICAoZGF0YV9pX2ZsdXNoX2VuKSwKICAgIC5mbHVzaF90aW1lb3V0ICAgICAgICAgKGRhdGFf
aV9mbHVzaF90aW1lb3V0KSwKICAgIC5mbHVzaF9hY3RpdmUgICAgICAgICAgKGRhdGFfaV9mbHVz
aF9hY3RpdmVbMF0pLAogICAgLmZsdXNoX2RvbmUgICAgICAgICAgICAoZGF0YV9pX2ZsdXNoX2Rv
bmVbMF0pCiAgKTsKCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAvLyBPdXRwdXQgRGF0YSBQ
YXRocwogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIGF4aXNfcHlsZF9jdHh0X3RvX2NoZHIg
IygKICAgIC5DSERSX1cgICAgICAgICAgICAgIChDSERSX1cpLAogICAgLklURU1fVyAgICAgICAg
ICAgICAgKDMyKSwKICAgIC5OSVBDICAgICAgICAgICAgICAgICgxKSwKICAgIC5TWU5DX0NMS1Mg
ICAgICAgICAgICgxKSwKICAgIC5DT05URVhUX0ZJRk9fU0laRSAgICgkY2xvZzIoMikpLAogICAg
LlBBWUxPQURfRklGT19TSVpFICAgKCRjbG9nMigyKSksCiAgICAuTVRVICAgICAgICAgICAgICAg
ICAoTVRVKSwKICAgIC5DT05URVhUX1BSRUZFVENIX0VOICgxKQogICkgYXhpc19weWxkX2N0eHRf
dG9fY2hkcl9vdXRfb3V0ICgKICAgIC5heGlzX2NoZHJfY2xrICAgICAgICAgKHJmbm9jX2NoZHJf
Y2xrKSwKICAgIC5heGlzX2NoZHJfcnN0ICAgICAgICAgKHJmbm9jX2NoZHJfcnN0KSwKICAgIC5h
eGlzX2RhdGFfY2xrICAgICAgICAgKGF4aXNfZGF0YV9jbGspLAogICAgLmF4aXNfZGF0YV9yc3Qg
ICAgICAgICAoYXhpc19kYXRhX3JzdCksCiAgICAubV9heGlzX2NoZHJfdGRhdGEgICAgIChtX3Jm
bm9jX2NoZHJfdGRhdGFbKDApKkNIRFJfVys6Q0hEUl9XXSksCiAgICAubV9heGlzX2NoZHJfdGxh
c3QgICAgIChtX3Jmbm9jX2NoZHJfdGxhc3RbMF0pLAogICAgLm1fYXhpc19jaGRyX3R2YWxpZCAg
ICAobV9yZm5vY19jaGRyX3R2YWxpZFswXSksCiAgICAubV9heGlzX2NoZHJfdHJlYWR5ICAgICht
X3Jmbm9jX2NoZHJfdHJlYWR5WzBdKSwKICAgIC5zX2F4aXNfcGF5bG9hZF90ZGF0YSAgKHNfb3V0
X3BheWxvYWRfdGRhdGEpLAogICAgLnNfYXhpc19wYXlsb2FkX3RrZWVwICAoc19vdXRfcGF5bG9h
ZF90a2VlcCksCiAgICAuc19heGlzX3BheWxvYWRfdGxhc3QgIChzX291dF9wYXlsb2FkX3RsYXN0
KSwKICAgIC5zX2F4aXNfcGF5bG9hZF90dmFsaWQgKHNfb3V0X3BheWxvYWRfdHZhbGlkKSwKICAg
IC5zX2F4aXNfcGF5bG9hZF90cmVhZHkgKHNfb3V0X3BheWxvYWRfdHJlYWR5KSwKICAgIC5zX2F4
aXNfY29udGV4dF90ZGF0YSAgKHNfb3V0X2NvbnRleHRfdGRhdGEpLAogICAgLnNfYXhpc19jb250
ZXh0X3R1c2VyICAoc19vdXRfY29udGV4dF90dXNlciksCiAgICAuc19heGlzX2NvbnRleHRfdGxh
c3QgIChzX291dF9jb250ZXh0X3RsYXN0KSwKICAgIC5zX2F4aXNfY29udGV4dF90dmFsaWQgKHNf
b3V0X2NvbnRleHRfdHZhbGlkKSwKICAgIC5zX2F4aXNfY29udGV4dF90cmVhZHkgKHNfb3V0X2Nv
bnRleHRfdHJlYWR5KSwKICAgIC5mcmFtZXJfZXJyb3JzICAgICAgICAgKCksCiAgICAuZmx1c2hf
ZW4gICAgICAgICAgICAgIChkYXRhX29fZmx1c2hfZW4pLAogICAgLmZsdXNoX3RpbWVvdXQgICAg
ICAgICAoZGF0YV9vX2ZsdXNoX3RpbWVvdXQpLAogICAgLmZsdXNoX2FjdGl2ZSAgICAgICAgICAo
ZGF0YV9vX2ZsdXNoX2FjdGl2ZVswXSksCiAgICAuZmx1c2hfZG9uZSAgICAgICAgICAgIChkYXRh
X29fZmx1c2hfZG9uZVswXSkKICApOwoKZW5kbW9kdWxlIC8vIG5vY19zaGVsbF9nYWluCgoKYGRl
ZmF1bHRfbmV0dHlwZSB3aXJlCgo=
--000000000000f14c6305df946908
Content-Type: text/x-verilog; charset="US-ASCII"; name="rfnoc_block_gain.v"
Content-Disposition: attachment; filename="rfnoc_block_gain.v"
Content-Transfer-Encoding: base64
Content-ID: <f_l3gyl6bu2>
X-Attachment-Id: f_l3gyl6bu2

Ly8KLy8gQ29weXJpZ2h0IDIwMjEgRXR0dXMgUmVzZWFyY2gsIGEgTmF0aW9uYWwgSW5zdHJ1bWVu
dHMgQnJhbmQKLy8KLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IExHUEwtMy4wLW9yLWxhdGVy
Ci8vCi8vIE1vZHVsZTogcmZub2NfYmxvY2tfZ2FpbgovLwovLyBEZXNjcmlwdGlvbjoKLy8KLy8g
ICBUaGlzIGlzIGFuIGV4YW1wbGUgUkZOb0MgYmxvY2suIEl0IGFwcGxpZXMgYSBudW1lcmljIGdh
aW4gdG8gaW5jb21pbmcKLy8gICBzYW1wbGVzIHRoZW4gb3V0cHV0cyB0aGUgcmVzdWx0LiBBIHNp
bmdsZSByZWdpc3RlciBpcyB1c2VkIHRvIGNvbnRyb2wgdGhlCi8vICAgZ2FpbiBzZXR0aW5nLgov
LwovLyBQYXJhbWV0ZXJzOgovLwovLyAgIFRISVNfUE9SVElEIDogQ29udHJvbCBjcm9zc2JhciBw
b3J0IHRvIHdoaWNoIHRoaXMgYmxvY2sgaXMgY29ubmVjdGVkCi8vICAgQ0hEUl9XICAgICAgOiBB
WElTLUNIRFIgZGF0YSBidXMgd2lkdGgKLy8gICBNVFUgICAgICAgICA6IE1heGltdW0gdHJhbnNt
aXNzaW9uIHVuaXQgKGkuZS4sIG1heGltdW0gcGFja2V0IHNpemUgaW4KLy8gICAgICAgICAgICAg
ICAgIENIRFIgd29yZHMgaXMgMioqTVRVKS4KLy8gICBJUF9PUFRJT04gICA6IFNlbGVjdCB3aGlj
aCBJUCB0byB1c2UgZm9yIHRoZSBjb21wbGV4IG11bHRpcGx5LiBVc2Ugb25lIG9mCi8vICAgICAg
ICAgICAgICAgICB0aGUgZm9sbG93aW5nIG9wdGlvbnM6Ci8vICAgICAgICAgICAgICAgICBIRExf
SVAgICAgICAgICA9IEluLXRyZWUgUkZOb0MgSERMLCB3aXRoIGEgRFNQNDhFMSBwcmltaXRpdmUK
Ly8gICAgICAgICAgICAgICAgIElOX1RSRUVfSVAgICAgID0gSW4tdHJlZSAiY29tcGxleF9tdWx0
aXBsaWVyIiAoWGlsaW54IElQKQovLyAgICAgICAgICAgICAgICAgT1VUX09GX1RSRUVfSVAgPSBP
dXQtb2YtdHJlZSAiY21wbHhfbXVsIiAoWGlsaW54IElQKQovLwoKYGRlZmF1bHRfbmV0dHlwZSBu
b25lCgptb2R1bGUgcmZub2NfYmxvY2tfZ2FpbiAjKAogIHBhcmFtZXRlciBbOTowXSBUSElTX1BP
UlRJRCAgICAgPSAxMCdkMCwKICBwYXJhbWV0ZXIgICAgICAgQ0hEUl9XICAgICAgICAgID0gNjQs
CiAgcGFyYW1ldGVyIFs1OjBdIE1UVSAgICAgICAgICAgICA9IDEwLAogIHBhcmFtZXRlciAgICAg
ICBJUF9PUFRJT04gICAgICAgPSAiSERMX0lQIgopICgKICAvLyBSRk5vQyBGcmFtZXdvcmsgQ2xv
Y2tzIGFuZCBSZXNldHMKICBpbnB1dCAgd2lyZSAgICAgICAgICAgICAgICAgICByZm5vY19jaGRy
X2NsaywKICBpbnB1dCAgd2lyZSAgICAgICAgICAgICAgICAgICByZm5vY19jdHJsX2NsaywKICBp
bnB1dCAgd2lyZSAgICAgICAgICAgICAgICAgICBjZV9jbGssCiAvLyBpbnB1dCAgd2lyZSAgICAg
ICAgICAgICAgICAgICBjZV9yc3QsCgoKICAvLyBSRk5vQyBCYWNrZW5kIEludGVyZmFjZQogIGlu
cHV0ICB3aXJlIFs1MTE6MF0gICAgICAgICAgIHJmbm9jX2NvcmVfY29uZmlnLAogIG91dHB1dCB3
aXJlIFs1MTE6MF0gICAgICAgICAgIHJmbm9jX2NvcmVfc3RhdHVzLAogIC8vIEFYSVMtQ0hEUiBJ
bnB1dCBQb3J0cyAoZnJvbSBmcmFtZXdvcmspCiAgaW5wdXQgIHdpcmUgWygxKSpDSERSX1ctMTow
XSBzX3Jmbm9jX2NoZHJfdGRhdGEsCiAgaW5wdXQgIHdpcmUgWygxKS0xOjBdICAgICAgICBzX3Jm
bm9jX2NoZHJfdGxhc3QsCiAgaW5wdXQgIHdpcmUgWygxKS0xOjBdICAgICAgICBzX3Jmbm9jX2No
ZHJfdHZhbGlkLAogIG91dHB1dCB3aXJlIFsoMSktMTowXSAgICAgICAgc19yZm5vY19jaGRyX3Ry
ZWFkeSwKICAvLyBBWElTLUNIRFIgT3V0cHV0IFBvcnRzICh0byBmcmFtZXdvcmspCiAgb3V0cHV0
IHdpcmUgWygxKSpDSERSX1ctMTowXSBtX3Jmbm9jX2NoZHJfdGRhdGEsCiAgb3V0cHV0IHdpcmUg
WygxKS0xOjBdICAgICAgICBtX3Jmbm9jX2NoZHJfdGxhc3QsCiAgb3V0cHV0IHdpcmUgWygxKS0x
OjBdICAgICAgICBtX3Jmbm9jX2NoZHJfdHZhbGlkLAogIGlucHV0ICB3aXJlIFsoMSktMTowXSAg
ICAgICAgbV9yZm5vY19jaGRyX3RyZWFkeSwKICAvLyBBWElTLUN0cmwgSW5wdXQgUG9ydCAoZnJv
bSBmcmFtZXdvcmspCiAgaW5wdXQgIHdpcmUgWzMxOjBdICAgICAgICAgICAgc19yZm5vY19jdHJs
X3RkYXRhLAogIGlucHV0ICB3aXJlICAgICAgICAgICAgICAgICAgIHNfcmZub2NfY3RybF90bGFz
dCwKICBpbnB1dCAgd2lyZSAgICAgICAgICAgICAgICAgICBzX3Jmbm9jX2N0cmxfdHZhbGlkLAog
IG91dHB1dCB3aXJlICAgICAgICAgICAgICAgICAgIHNfcmZub2NfY3RybF90cmVhZHksCiAgLy8g
QVhJUy1DdHJsIE91dHB1dCBQb3J0ICh0byBmcmFtZXdvcmspCiAgb3V0cHV0IHdpcmUgWzMxOjBd
ICAgICAgICAgICAgbV9yZm5vY19jdHJsX3RkYXRhLAogIG91dHB1dCB3aXJlICAgICAgICAgICAg
ICAgICAgIG1fcmZub2NfY3RybF90bGFzdCwKICBvdXRwdXQgd2lyZSAgICAgICAgICAgICAgICAg
ICBtX3Jmbm9jX2N0cmxfdHZhbGlkLAogIGlucHV0ICB3aXJlICAgICAgICAgICAgICAgICAgIG1f
cmZub2NfY3RybF90cmVhZHkKKTsKCiAgLy8gVGhlc2UgYXJlIGV4YW1wbGVzIG9mIGhvdyB0byBp
bmNsdWRlIGFuIGluLXRyZWUgaGVhZGVyIGZpbGUuIFVIRF9GUEdBX0RJUgogIC8vIGlzIGRlZmlu
ZWQgYXV0b21hdGljYWxseSBhbmQgY2FuIGJlIHJlZmVyZW5jZWQgYXMgbmVlZGVkLiBUb29scyB2
YXJ5CiAgLy8gc29tZXdoYXQgaW4gaG93IHRoZXkgc3VwcG9ydCB1c2luZyBtYWNyb3MgaW4gYGlu
Y2x1ZGUgc3RhdGVtZW50cy4KICAvLwogIC8vIFRoaXMgd29ya3MgaW4gVml2YWRvOgogIC8vCiAg
Ly8gICBgaW5jbHVkZSBgImBVSERfRlBHQV9ESVIvdXNycDMvbGliL3Jmbm9jL2NvcmUvcmZub2Nf
Y2hkcl91dGlscy52aGAiCiAgLy8KICAvLyBTb21lIHRvb2xzIGFsbG93IHRoaXM6CiAgLy8KICAv
LyAgIGBkZWZpbmUgSU5DTFVERV9VSERfRklMRShSRUxfUEFUSCkgYCJgVUhEX0ZQR0FfRElSL1JF
TF9QQVRIYCIKICAvLyAgIGBpbmNsdWRlIGBJTkNMVURFX1VIRF9GSUxFKHVzcnAzL2xpYi9yZm5v
Yy9jb3JlL3Jmbm9jX2NoZHJfdXRpbHMudmgpCiAgLy8KICAvLyBUaGlzIHNob3VsZCB3b3JrIGlu
IG1vc3QgdG9vbHM6CiAgYGRlZmluZSBSRk5PQ19DSERSX1VUSUxTX1BBVEggYCJgVUhEX0ZQR0Ff
RElSL3VzcnAzL2xpYi9yZm5vYy9jb3JlL3Jmbm9jX2NoZHJfdXRpbHMudmhgIgogIGBpbmNsdWRl
IGBSRk5PQ19DSERSX1VUSUxTX1BBVEgKCgogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgLy8gU2ln
bmFsIERlY2xhcmF0aW9ucwogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIC8vIENsb2NrcyBhbmQg
UmVzZXRzCiAgd2lyZSAgICAgICAgICAgICAgIGN0cmxwb3J0X2NsazsKICB3aXJlICAgICAgICAg
ICAgICAgY3RybHBvcnRfcnN0OwogIHdpcmUgICAgICAgICAgICAgICBheGlzX2RhdGFfY2xrOwog
IHdpcmUgICAgICAgICAgICAgICBheGlzX2RhdGFfcnN0OwogIC8vQWRkIGN1c3RvbSBjbG9ja3MK
ICAvL3dpcmUgICAgICAgICAgICAgICByZm5vY19jaGRyX2NsazsKICAvL3dpcmUgICAgICAgICAg
ICAgICByZm5vY19jaGRyX3JzdDsKICAvL3dpcmUgICAgICAgICAgICAgICBjZV9jbGs7CiAgLy93
aXJlICAgICAgICAgICAgICAgY2VfcnN0OwogCiAgLy8gQ3RybFBvcnQgTWFzdGVyCiAgd2lyZSAg
ICAgICAgICAgICAgIG1fY3RybHBvcnRfcmVxX3dyOwogIHdpcmUgICAgICAgICAgICAgICBtX2N0
cmxwb3J0X3JlcV9yZDsKICB3aXJlIFsxOTowXSAgICAgICAgbV9jdHJscG9ydF9yZXFfYWRkcjsK
ICB3aXJlIFszMTowXSAgICAgICAgbV9jdHJscG9ydF9yZXFfZGF0YTsKICByZWcgICAgICAgICAg
ICAgICAgbV9jdHJscG9ydF9yZXNwX2FjazsKICByZWcgIFszMTowXSAgICAgICAgbV9jdHJscG9y
dF9yZXNwX2RhdGE7CiAgLy8gUGF5bG9hZCBTdHJlYW0gdG8gVXNlciBMb2dpYzogaW4KICB3aXJl
IFszMioxLTE6MF0gICAgbV9pbl9wYXlsb2FkX3RkYXRhOwogIHdpcmUgWzEtMTowXSAgICAgICBt
X2luX3BheWxvYWRfdGtlZXA7CiAgd2lyZSAgICAgICAgICAgICAgIG1faW5fcGF5bG9hZF90bGFz
dDsKICB3aXJlICAgICAgICAgICAgICAgbV9pbl9wYXlsb2FkX3R2YWxpZDsKICB3aXJlICAgICAg
ICAgICAgICAgbV9pbl9wYXlsb2FkX3RyZWFkeTsKICAvLyBDb250ZXh0IFN0cmVhbSB0byBVc2Vy
IExvZ2ljOiBpbgogIHdpcmUgW0NIRFJfVy0xOjBdICBtX2luX2NvbnRleHRfdGRhdGE7CiAgd2ly
ZSBbMzowXSAgICAgICAgIG1faW5fY29udGV4dF90dXNlcjsKICB3aXJlICAgICAgICAgICAgICAg
bV9pbl9jb250ZXh0X3RsYXN0OwogIHdpcmUgICAgICAgICAgICAgICBtX2luX2NvbnRleHRfdHZh
bGlkOwogIHdpcmUgICAgICAgICAgICAgICBtX2luX2NvbnRleHRfdHJlYWR5OwogIC8vIFBheWxv
YWQgU3RyZWFtIGZyb20gVXNlciBMb2dpYzogb3V0CiAgd2lyZSBbMzIqMS0xOjBdICAgIHNfb3V0
X3BheWxvYWRfdGRhdGE7CiAgd2lyZSBbMDowXSAgICAgICAgIHNfb3V0X3BheWxvYWRfdGtlZXA7
CiAgd2lyZSAgICAgICAgICAgICAgIHNfb3V0X3BheWxvYWRfdGxhc3Q7CiAgd2lyZSAgICAgICAg
ICAgICAgIHNfb3V0X3BheWxvYWRfdHZhbGlkOwogIHdpcmUgICAgICAgICAgICAgICBzX291dF9w
YXlsb2FkX3RyZWFkeTsKICAvLyBDb250ZXh0IFN0cmVhbSBmcm9tIFVzZXIgTG9naWM6IG91dAog
IHdpcmUgW0NIRFJfVy0xOjBdICBzX291dF9jb250ZXh0X3RkYXRhOwogIHdpcmUgWzM6MF0gICAg
ICAgICBzX291dF9jb250ZXh0X3R1c2VyOwogIHdpcmUgICAgICAgICAgICAgICBzX291dF9jb250
ZXh0X3RsYXN0OwogIHdpcmUgICAgICAgICAgICAgICBzX291dF9jb250ZXh0X3R2YWxpZDsKICB3
aXJlICAgICAgICAgICAgICAgc19vdXRfY29udGV4dF90cmVhZHk7CgogIC8vLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCiAgLy8gTm9DIFNoZWxsCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgd2lyZSBjZV9y
c3Q7CiAgbm9jX3NoZWxsX2dhaW4gIygKICAgIC5DSERSX1cgICAgICAoQ0hEUl9XKSwKICAgIC5U
SElTX1BPUlRJRCAoVEhJU19QT1JUSUQpLAogICAgLk1UVSAgICAgICAgIChNVFUpCiAgKSBub2Nf
c2hlbGxfZ2Fpbl9pICgKICAgIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAvLyBGcmFtZXdv
cmsgSW50ZXJmYWNlCiAgICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICAgIC8vIENsb2NrIElu
cHV0cwogICAgLnJmbm9jX2NoZHJfY2xrICAgICAgKHJmbm9jX2NoZHJfY2xrKSwKICAgIC5yZm5v
Y19jdHJsX2NsayAgICAgIChyZm5vY19jdHJsX2NsayksCiAgICAuY2VfY2xrICAgICAgICAgICAg
ICAgICAgKGNlX2NsayksCgogICAgLy8gUmVzZXQgT3V0cHV0cwogICAgLnJmbm9jX2NoZHJfcnN0
ICAgICAgKCksCiAgICAucmZub2NfY3RybF9yc3QgICAgICAoKSwKICAgIC5jZV9yc3QgICAgICAg
ICAgICAgICAgICAoY2VfcnN0KSwKICAgIC8vIFJGTm9DIEJhY2tlbmQgSW50ZXJmYWNlCiAgICAu
cmZub2NfY29yZV9jb25maWcgICAocmZub2NfY29yZV9jb25maWcpLAogICAgLnJmbm9jX2NvcmVf
c3RhdHVzICAgKHJmbm9jX2NvcmVfc3RhdHVzKSwKICAgIC8vIENIRFIgSW5wdXQgUG9ydHMgIChm
cm9tIGZyYW1ld29yaykKICAgIC5zX3Jmbm9jX2NoZHJfdGRhdGEgIChzX3Jmbm9jX2NoZHJfdGRh
dGEpLAogICAgLnNfcmZub2NfY2hkcl90bGFzdCAgKHNfcmZub2NfY2hkcl90bGFzdCksCiAgICAu
c19yZm5vY19jaGRyX3R2YWxpZCAoc19yZm5vY19jaGRyX3R2YWxpZCksCiAgICAuc19yZm5vY19j
aGRyX3RyZWFkeSAoc19yZm5vY19jaGRyX3RyZWFkeSksCiAgICAvLyBDSERSIE91dHB1dCBQb3J0
cyAodG8gZnJhbWV3b3JrKQogICAgLm1fcmZub2NfY2hkcl90ZGF0YSAgKG1fcmZub2NfY2hkcl90
ZGF0YSksCiAgICAubV9yZm5vY19jaGRyX3RsYXN0ICAobV9yZm5vY19jaGRyX3RsYXN0KSwKICAg
IC5tX3Jmbm9jX2NoZHJfdHZhbGlkIChtX3Jmbm9jX2NoZHJfdHZhbGlkKSwKICAgIC5tX3Jmbm9j
X2NoZHJfdHJlYWR5IChtX3Jmbm9jX2NoZHJfdHJlYWR5KSwKICAgIC8vIEFYSVMtQ3RybCBJbnB1
dCBQb3J0IChmcm9tIGZyYW1ld29yaykKICAgIC5zX3Jmbm9jX2N0cmxfdGRhdGEgIChzX3Jmbm9j
X2N0cmxfdGRhdGEpLAogICAgLnNfcmZub2NfY3RybF90bGFzdCAgKHNfcmZub2NfY3RybF90bGFz
dCksCiAgICAuc19yZm5vY19jdHJsX3R2YWxpZCAoc19yZm5vY19jdHJsX3R2YWxpZCksCiAgICAu
c19yZm5vY19jdHJsX3RyZWFkeSAoc19yZm5vY19jdHJsX3RyZWFkeSksCiAgICAvLyBBWElTLUN0
cmwgT3V0cHV0IFBvcnQgKHRvIGZyYW1ld29yaykKICAgIC5tX3Jmbm9jX2N0cmxfdGRhdGEgICht
X3Jmbm9jX2N0cmxfdGRhdGEpLAogICAgLm1fcmZub2NfY3RybF90bGFzdCAgKG1fcmZub2NfY3Ry
bF90bGFzdCksCiAgICAubV9yZm5vY19jdHJsX3R2YWxpZCAobV9yZm5vY19jdHJsX3R2YWxpZCks
CiAgICAubV9yZm5vY19jdHJsX3RyZWFkeSAobV9yZm5vY19jdHJsX3RyZWFkeSksCgogICAgLy8t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgIC8vIENsaWVudCBJbnRlcmZhY2UKICAgIC8vLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCgogICAgLy8gQ3RybFBvcnQgQ2xvY2sgYW5kIFJlc2V0CiAgICAuY3Ry
bHBvcnRfY2xrICAgICAgICAgICAgICAoY3RybHBvcnRfY2xrKSwKICAgIC5jdHJscG9ydF9yc3Qg
ICAgICAgICAgICAgIChjdHJscG9ydF9yc3QpLAogICAgLy8gQ3RybFBvcnQgTWFzdGVyCiAgICAu
bV9jdHJscG9ydF9yZXFfd3IgICAgICAgICAobV9jdHJscG9ydF9yZXFfd3IpLAogICAgLm1fY3Ry
bHBvcnRfcmVxX3JkICAgICAgICAgKG1fY3RybHBvcnRfcmVxX3JkKSwKICAgIC5tX2N0cmxwb3J0
X3JlcV9hZGRyICAgICAgIChtX2N0cmxwb3J0X3JlcV9hZGRyKSwKICAgIC5tX2N0cmxwb3J0X3Jl
cV9kYXRhICAgICAgIChtX2N0cmxwb3J0X3JlcV9kYXRhKSwKICAgIC5tX2N0cmxwb3J0X3Jlc3Bf
YWNrICAgICAgIChtX2N0cmxwb3J0X3Jlc3BfYWNrKSwKICAgIC5tX2N0cmxwb3J0X3Jlc3BfZGF0
YSAgICAgIChtX2N0cmxwb3J0X3Jlc3BfZGF0YSksCgogICAgLy8gQVhJLVN0cmVhbSBQYXlsb2Fk
IENvbnRleHQgQ2xvY2sgYW5kIFJlc2V0CiAgICAuYXhpc19kYXRhX2NsayAoYXhpc19kYXRhX2Ns
ayksCiAgICAuYXhpc19kYXRhX3JzdCAoYXhpc19kYXRhX3JzdCksCiAgICAvLyBQYXlsb2FkIFN0
cmVhbSB0byBVc2VyIExvZ2ljOiBpbgogICAgLm1faW5fcGF5bG9hZF90ZGF0YSAgKG1faW5fcGF5
bG9hZF90ZGF0YSksCiAgICAubV9pbl9wYXlsb2FkX3RrZWVwICAobV9pbl9wYXlsb2FkX3RrZWVw
KSwKICAgIC5tX2luX3BheWxvYWRfdGxhc3QgIChtX2luX3BheWxvYWRfdGxhc3QpLAogICAgLm1f
aW5fcGF5bG9hZF90dmFsaWQgKG1faW5fcGF5bG9hZF90dmFsaWQpLAogICAgLm1faW5fcGF5bG9h
ZF90cmVhZHkgKG1faW5fcGF5bG9hZF90cmVhZHkpLAogICAgLy8gQ29udGV4dCBTdHJlYW0gdG8g
VXNlciBMb2dpYzogaW4KICAgIC5tX2luX2NvbnRleHRfdGRhdGEgIChtX2luX2NvbnRleHRfdGRh
dGEpLAogICAgLm1faW5fY29udGV4dF90dXNlciAgKG1faW5fY29udGV4dF90dXNlciksCiAgICAu
bV9pbl9jb250ZXh0X3RsYXN0ICAobV9pbl9jb250ZXh0X3RsYXN0KSwKICAgIC5tX2luX2NvbnRl
eHRfdHZhbGlkIChtX2luX2NvbnRleHRfdHZhbGlkKSwKICAgIC5tX2luX2NvbnRleHRfdHJlYWR5
IChtX2luX2NvbnRleHRfdHJlYWR5KSwKICAgIC8vIFBheWxvYWQgU3RyZWFtIGZyb20gVXNlciBM
b2dpYzogb3V0CiAgICAuc19vdXRfcGF5bG9hZF90ZGF0YSAgKHNfb3V0X3BheWxvYWRfdGRhdGEp
LAogICAgLnNfb3V0X3BheWxvYWRfdGtlZXAgIChzX291dF9wYXlsb2FkX3RrZWVwKSwKICAgIC5z
X291dF9wYXlsb2FkX3RsYXN0ICAoc19vdXRfcGF5bG9hZF90bGFzdCksCiAgICAuc19vdXRfcGF5
bG9hZF90dmFsaWQgKHNfb3V0X3BheWxvYWRfdHZhbGlkKSwKICAgIC5zX291dF9wYXlsb2FkX3Ry
ZWFkeSAoc19vdXRfcGF5bG9hZF90cmVhZHkpLAogICAgLy8gQ29udGV4dCBTdHJlYW0gZnJvbSBV
c2VyIExvZ2ljOiBvdXQKICAgIC5zX291dF9jb250ZXh0X3RkYXRhICAoc19vdXRfY29udGV4dF90
ZGF0YSksCiAgICAuc19vdXRfY29udGV4dF90dXNlciAgKHNfb3V0X2NvbnRleHRfdHVzZXIpLAog
ICAgLnNfb3V0X2NvbnRleHRfdGxhc3QgIChzX291dF9jb250ZXh0X3RsYXN0KSwKICAgIC5zX291
dF9jb250ZXh0X3R2YWxpZCAoc19vdXRfY29udGV4dF90dmFsaWQpLAogICAgLnNfb3V0X2NvbnRl
eHRfdHJlYWR5IChzX291dF9jb250ZXh0X3RyZWFkeSkKICApOwoKICAvLy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogIC8vIFVzZXIgTG9naWMKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIC8vCiAgLy8gVGhl
IGNvZGUgYWJvdmUgdGhpcyBwb2ludCBpcyBlc3NlbnRpYWxseSB1bm1vZGlmaWVkIGZyb20gd2hh
dCB3YXMKICAvLyBnZW5lcmF0ZWQgYnkgdGhlIHRvb2wuIFRoZSBjb2RlIGJlbG93IGltcGxlbWVu
dHMgdGhlIGdhaW4gZXhhbXBsZS4KICAvLwogIC8vIEFsbCByZWdpc3RlcnMgYXJlIGluIHRoZSBj
dHJscG9ydF9jbGsgZG9tYWluIGFuZCB0aGUgc2lnbmFsIHByb2Nlc3NpbmcgaXMKICAvLyBpbiB0
aGUgYXhpc19kYXRhX2NsayBkb21haW4uIEhvd2V2ZXIsIHdlIHNwZWNpZmllZCBpbiB0aGUgYmxv
Y2sgWUFNTAogIC8vIGNvbmZpZ3VyYXRpb24gZmlsZSB0aGF0IHdlIHdhbnQgYm90aCB0aGUgY29u
dHJvbCBhbmQgZGF0YSBpbnRlcmZhY2VzIG9uCiAgLy8gdGhlIHJmbm9jX2NoZHIgY2xvY2suIFNv
IHdlIGRvbid0IG5lZWQgdG8gd29ycnkgYWJvdXQgY3Jvc3NpbmcgdGhlCiAgLy8gcmVnaXN0ZXIg
ZGF0YSBmcm9tIGN0cmxwb3J0X2NsayBhbmQgYXhpc19kYXRhX2Nsay4KICAvLwogIC8vLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCgogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgLy8gUmVnaXN0ZXJzCiAgLy8t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KICAvLwogIC8vIFRoZXJlJ3Mgb25seSBvbmUgcmVnaXN0ZXIgbm93
LCBidXQgd2UnbGwgc3RydWN0dXJlIHRoZSByZWdpc3RlciBjb2RlIHRvCiAgLy8gbWFrZSBpdCBl
YXNpZXIgdG8gYWRkIG1vcmUgcmVnaXN0ZXJzIGxhdGVyLgogIC8vCiAgLy8tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KCiAgbG9jYWxwYXJhbSBSRUdfR0FJTl9BRERSICAgID0gMDsgICAgLy8gQWRkcmVzcyBm
b3IgZ2FpbiB2YWx1ZQogIGxvY2FscGFyYW0gUkVHX0dBSU5fREVGQVVMVCA9IDE7ICAgIC8vIERl
ZmF1bHQgZ2FpbiB2YWx1ZQoKICByZWcgWzE1OjBdIHJlZ19nYWluID0gUkVHX0dBSU5fREVGQVVM
VDsKCiAgYWx3YXlzIEAocG9zZWRnZSBjZV9jbGspIGJlZ2luCiAgICAvLyRkaXNwbGF5KCJjbG9j
a3BvcnQgY3RybCBwb3NlZGdlIik7CiAgICBpZiAoY2VfcnN0KSBiZWdpbgogICAgICByZWdfZ2Fp
biA9IFJFR19HQUlOX0RFRkFVTFQ7CiAgICBlbmQgZWxzZSBiZWdpbgogICAgICAvLyBEZWZhdWx0
IGFzc2lnbm1lbnQKICAgICAgbV9jdHJscG9ydF9yZXNwX2FjayA8PSAwOwoKICAgICAgLy8gSGFu
ZGxlIHJlYWQgcmVxdWVzdHMKICAgICAgaWYgKG1fY3RybHBvcnRfcmVxX3JkKSBiZWdpbgogICAg
ICAgIGNhc2UgKG1fY3RybHBvcnRfcmVxX2FkZHIpCiAgICAgICAgICBSRUdfR0FJTl9BRERSOiBi
ZWdpbgogICAgICAgICAgICBtX2N0cmxwb3J0X3Jlc3BfYWNrICA8PSAxOwogICAgICAgICAgICBt
X2N0cmxwb3J0X3Jlc3BfZGF0YSA8PSB7IDE2J2IwLCByZWdfZ2FpbiB9OwogICAgICAgICAgZW5k
CiAgICAgICAgZW5kY2FzZQogICAgICBlbmQKCiAgICAgIC8vIEhhbmRsZSB3cml0ZSByZXF1ZXN0
cwogICAgICBpZiAobV9jdHJscG9ydF9yZXFfd3IpIGJlZ2luCiAgICAgICAgY2FzZSAobV9jdHJs
cG9ydF9yZXFfYWRkcikKICAgICAgICAgIFJFR19HQUlOX0FERFI6IGJlZ2luCiAgICAgICAgICAg
IG1fY3RybHBvcnRfcmVzcF9hY2sgPD0gMTsKICAgICAgICAgICAgcmVnX2dhaW4gICAgICAgICAg
ICA8PSBtX2N0cmxwb3J0X3JlcV9kYXRhWzE1OjBdOwogICAgICAgICAgZW5kCiAgICAgICAgZW5k
Y2FzZQogICAgICBlbmQKICAgIGVuZAogIGVuZAoKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIC8v
IFNpZ25hbCBQcm9jZXNzaW5nCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAvLwogIC8vIE11bHRp
cGx5IGVhY2ggY29tcGxleCBzYW1wbGUgYnkgYSByZWFsLXZhbHVlZCBnYWluLiBUaGUgUkZOb0Mg
c2lnbmFscwogIC8vIG1faW5fcGF5bG9hZF8qIGFuZCBtX291dF9wYXlsb2FkXyogZXhwZWN0IHRo
ZSBkYXRhIHdpdGggdGhlIHJlYWwvSQogIC8vIGNvbXBvbmVudCBvbiB0aGUgdXBwZXIgYml0cyBb
MzE6MTZdIGFuZCB0aGUgaW1hZ2luYXJ5L1EgY29tcG9uZW50IG9uIHRoZQogIC8vIGxvd2VyIGJp
dHMgWzE1OjBdLgogIC8vCiAgLy8gV2Ugb25seSBpbnB1dCB0aGUgcmVhbC12YWx1ZWQgZ2FpbiAo
cmVnX2dhaW4pIHdoZW4gd2UgaGF2ZSBwYXlsb2FkIGRhdGEgdG8KICAvLyBnbyBpbiAobV9pbl9w
YXlsb2FkXyopLiBUaGF0IHdheSB0aGUgY3VycmVudCBnYWluIHZhbHVlIGFsd2F5cyBhcHBsaWVz
IHRvCiAgLy8gdGhlIGN1cnJlbnQgc2FtcGxlLiBUaGlzIGFzc3VtZXMgdGhhdCB0aGUgdHJlYWR5
IG9mIGJvdGggaW5wdXRzIGhhdmUKICAvLyBpZGVudGljYWwgYmVoYXZpb3IuCiAgLy8KICAvLy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQogIC8vYXNzaWduIGNlX2NsayA9IHJmbm9jX2NoZHJfY2xrOwogIC8v
YXNzaWduIGNlX3JzdCA9IHJmbm9jX2NoZHJfcnN0OwoKICAvLyBNdWx0aXBseSByZXN1bHQuIEkv
cmVhbCBpbiBbNjM6MzJdLCBRL2ltYWdpbmFyeSBpbiBbMzE6MF0gKHNjMzIpLgogIHdpcmUgWzYz
OjBdIG9fdGRhdGE7CiAgd2lyZSAgICAgICAgb190bGFzdDsKICB3aXJlICAgICAgICBvX3R2YWxp
ZDsKICB3aXJlICAgICAgICBvX3RyZWFkeTsgICAKCiAgIGlmIChJUF9PUFRJT04gPT0gIkhETF9J
UCIpIGJlZ2luIDogZ2VuX3Jmbm9jX2lwCiAgICAgIC8vIFVzZSB0aGUgUkZOb0MgbXVsdF9yYyBW
ZXJpbG9nIG1vZHVsZSwgd2hpY2ggdXNlcyBhIERTUDQ4RTEgcHJpbWl0aXZlCiAgICAgIG11bHRf
cmMgIygKICAgICAgICAuV0lEVEhfUkVBTCAoMTYpLAogICAgICAgIC5XSURUSF9DUExYICgxNiks
CiAgICAgICAgLldJRFRIX1AgICAgKDMyKSwKICAgICAgICAuRFJPUF9UT1BfUCAoNSksICAgICAv
LyBNdXN0IGJlIDUgZm9yIGEgbm9ybWFsIG11bHRpcGx5IGluIERTUDQ4RTEKICAgICAgICAuTEFU
RU5DWSAgICAoNCkgICAgICAvLyBUdXJuIG9uIGFsbCBwaXBlbGluZSByZWdpc3RlcnMgaW4gdGhl
IERTUDQ4RTEKICAgICAgKSBtdWx0X3JjX2kgKAogICAgICAgIC5jbGsgICAgICAgICAoY2VfY2xr
KSwKICAgICAgICAucmVzZXQgICAgICAgKGNlX3JzdCksCiAgICAgICAgLnJlYWxfdGRhdGEgIChy
ZWdfZ2FpbiksCiAgICAgICAgLnJlYWxfdGxhc3QgIChtX2luX3BheWxvYWRfdGxhc3QpLAogICAg
ICAgIC5yZWFsX3R2YWxpZCAobV9pbl9wYXlsb2FkX3R2YWxpZCksCiAgICAgICAgLnJlYWxfdHJl
YWR5ICgpLAogICAgICAgIC5jcGx4X3RkYXRhICAobV9pbl9wYXlsb2FkX3RkYXRhKSwKICAgICAg
ICAuY3BseF90bGFzdCAgKG1faW5fcGF5bG9hZF90bGFzdCksCiAgICAgICAgLmNwbHhfdHZhbGlk
IChtX2luX3BheWxvYWRfdHZhbGlkKSwKICAgICAgICAuY3BseF90cmVhZHkgKG1faW5fcGF5bG9h
ZF90cmVhZHkpLAogICAgICAgIC5wX3RkYXRhICAgICAob190ZGF0YSksCiAgICAgICAgLnBfdGxh
c3QgICAgIChvX3RsYXN0KSwKICAgICAgICAucF90dmFsaWQgICAgKG9fdHZhbGlkKSwKICAgICAg
ICAucF90cmVhZHkgICAgKG9fdHJlYWR5KQogICAgICApOwogCiAgIGVuZAogIAoKCiAgLy8gQ2xp
cCB0aGUgcmVzdWx0cwogIGF4aV9jbGlwX2NvbXBsZXggIygKICAgIC5XSURUSF9JTiAgKDMyKSwK
ICAgIC5XSURUSF9PVVQgKDE2KQogICkgYXhpX2NsaXBfY29tcGxleF9pICgKICAgIC5jbGsgICAg
ICAoY2VfY2xrKSwKICAgIC5yZXNldCAgICAoY2VfcnN0KSwKICAgIC5pX3RkYXRhICAob190ZGF0
YSksCiAgICAuaV90bGFzdCAgKG9fdGxhc3QpLAogICAgLmlfdHZhbGlkIChvX3R2YWxpZCksCiAg
ICAuaV90cmVhZHkgKG9fdHJlYWR5KSwKICAgIC5vX3RkYXRhICAoc19vdXRfcGF5bG9hZF90ZGF0
YSksCiAgICAub190bGFzdCAgKHNfb3V0X3BheWxvYWRfdGxhc3QpLAogICAgLm9fdHZhbGlkIChz
X291dF9wYXlsb2FkX3R2YWxpZCksCiAgICAub190cmVhZHkgKHNfb3V0X3BheWxvYWRfdHJlYWR5
KQogICk7CgogIC8vIE9ubHkgMS1zYW1wbGUgcGVyIGNsb2NrLCBzbyB0a2VlcCBzaG91bGQgYWx3
YXlzIGJlIGFzc2VydGVkCiAgYXNzaWduIHNfb3V0X3BheWxvYWRfdGtlZXAgPSAxJ2IxOwoKICAv
LyBXZSdyZSBub3QgZG9pbmcgYW55dGhpbmcgZmFuY3kgd2l0aCB0aGUgY29udGV4dCAodGhlIENI
RFIgaGVhZGVyIGluZm8pIHNvCiAgLy8gd2UgY2FuIHNpbXBseSBwYXNzIHRoZSBpbnB1dCBjb250
ZXh0IHRocm91Z2ggdW5jaGFuZ2VkLgogIGFzc2lnbiBzX291dF9jb250ZXh0X3RkYXRhICA9IG1f
aW5fY29udGV4dF90ZGF0YTsKICBhc3NpZ24gc19vdXRfY29udGV4dF90dXNlciAgPSBtX2luX2Nv
bnRleHRfdHVzZXI7CiAgYXNzaWduIHNfb3V0X2NvbnRleHRfdGxhc3QgID0gbV9pbl9jb250ZXh0
X3RsYXN0OwogIGFzc2lnbiBzX291dF9jb250ZXh0X3R2YWxpZCA9IG1faW5fY29udGV4dF90dmFs
aWQ7CiAgYXNzaWduIG1faW5fY29udGV4dF90cmVhZHkgID0gc19vdXRfY29udGV4dF90cmVhZHk7
CgplbmRtb2R1bGUgLy8gcmZub2NfYmxvY2tfZ2FpbgoKCgoKYGRlZmF1bHRfbmV0dHlwZSB3aXJl
--000000000000f14c6305df946908
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000f14c6305df946908--
