Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E341A54A102
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jun 2022 23:14:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95B56384268
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jun 2022 17:14:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655154840; bh=4Oo6U5W99Fk2v9JPXEIC5HOU8ohD4DHNcHKnUq8JOVg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=a/OUVK9TBcupK6RvuymNZHXZajJdWdr6L/jsQVru1FswF+i4a5/24jzI/HlFgnWBT
	 1fQjFXfiZ5/f4Bl44vKt2cyNokciTauQqaOrd/DdkCB2CRdm6UXlZpOyr9Fb2kp3ny
	 rK0lp1nqQyeAdY9V0AxbY9/dxVlsU2LPLc/j+tjNZAZZFzdyELFgYZmK46aHcW2++b
	 molDsR8PCCzaX8gYv391pnYQKPFYasHZjgP5qO7VTVtkKndOeRMbwtsu1kRi7jvJRg
	 a5I18XQ+Qdi7GHZe2coHKia8gmA24YUa1SP0d7HMCVAwjqm1eCLTEa8uhwz3GxDJSP
	 kIUXhNeF3VwFA==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id E2E1E3841B4
	for <usrp-users@lists.ettus.com>; Mon, 13 Jun 2022 17:12:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="tbgIFz9t";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id h27so11960749ybj.4
        for <usrp-users@lists.ettus.com>; Mon, 13 Jun 2022 14:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9QDNILsatYDX3g+C8k140ZD4e0njQ99MOUEZ3LYzMsQ=;
        b=tbgIFz9toGCd6Sk60IvUseenO9hzE88Dr6E5XVj7UFCe4dcj9LqG5qHu5EZXhryCsh
         Ccx2Ppez7/FKTpzFSNVCx9bZ62tBaOwh84x+SDnXH122+MbcGqcuLCAV7VMtGrrGbWmg
         6mEiW+AFKTok2r8EvCsyz3uAi5S+7qkZJ5loKbMGNpsYnaBPS41LAdqNWI1w7QwzzZmk
         OtGdEotoC/Q6m4G6Fc/ZD0x0CitQIV84m5FAvpLMcDi+JqeYp/sZxHGFab1OTjNbMNh0
         iUfU9kJwM//gxc3lDl4GIJzjATXOmqPVAHMPafVrzzEDS9OLL4/9XlBxIuor/sVl0lMH
         o5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9QDNILsatYDX3g+C8k140ZD4e0njQ99MOUEZ3LYzMsQ=;
        b=uJCEqPIDt7lXXWItuhmx3/p0RsJCvkzvsE7udxOUS9hXf3QW1v4p92i0572IepqI+y
         Uns8BRqLxKm6UkbXvV5wb19z6dLTmho7tHaQfmhpV5b2cD1b80DAGnm3jezz1ldu/GHp
         ExsGdFE9Ktwcg/kRLOo44ZHpvDkw0rnbst+i1PGd4gFWtARG6LEzcKNR9huf/YOae64T
         NhmtfHZeFsCnggRbFVU72gu2/RD1jV/90irEEOuUGlqC86e4bwzGT/sGbwl+g6jPzSJq
         Sti1DnIQHaSz3KtHNhtsD8fQKC1AFWxtKBdvab/dxMGvWqGO5lqihfgwhEWNLTygDWTx
         50bA==
X-Gm-Message-State: AJIora+BO9cJs3PUOwVAxBeMUot8pOci2OpEAC8AGbMVWSyCKjwKBjCl
	mNjxwAta/GyMKfng1PqN5YtPDtPOMtxsnE88pTVuX1fpzrfxPw==
X-Google-Smtp-Source: AGRyM1umceQ0v4Rp9wVbGvW3atnPd5EkMoNQdyh7W32V1FiHS6WwMufa5cn0EhjKKK3rUoJgOfRpTMIV+EOJjS6zNUs=
X-Received: by 2002:a05:6902:72a:b0:660:fb42:65e8 with SMTP id
 l10-20020a056902072a00b00660fb4265e8mr1667523ybt.499.1655154775198; Mon, 13
 Jun 2022 14:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PudkcunngQmNBfv4KB=pvkdHhd5JtOLP3tzs3hRz0q0xQ@mail.gmail.com>
In-Reply-To: <CAA=S3PudkcunngQmNBfv4KB=pvkdHhd5JtOLP3tzs3hRz0q0xQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 13 Jun 2022 16:12:39 -0500
Message-ID: <CAFche=gQ=tmGkoHwQ2gHsv3XP2BLDez9=ZADpeA_zFgNOPah1g@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: RTR76FXRS2X5QPJ6743AJK6RZB2OR37C
X-Message-ID-Hash: RTR76FXRS2X5QPJ6743AJK6RZB2OR37C
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it possible that synthesis and generating bitstream in RFNOC blocks make faster??!!!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RTR76FXRS2X5QPJ6743AJK6RZB2OR37C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0187457622712027191=="

--===============0187457622712027191==
Content-Type: multipart/alternative; boundary="0000000000006ca3e405e15ac086"

--0000000000006ca3e405e15ac086
Content-Type: text/plain; charset="UTF-8"

Hi sp,

It is possible to use incremental implementation using the checkpoints
generated by the build flow, but I've never tried it with USRPs. This is an
advanced Vivado feature so you would need to write your own TCL code to use
that feature. See the Xilinx documentation for details. Keep in mind that
this is only for implementation (not for synthesis) and it's only
recommended for small and isolated design changes.

Also, make sure when you run the build process that it's not regenerating
the IP. IP generation/synthesis should only happen once then those results
should be reused for each future build. But if you do "make cleanall" it
will delete all the IP build results.

A good way to reduce compilation time is to remove the parts of the RFNoC
Image Core that you don't need. For example, if you are only doing RX then
you can remove the TX paths, including the DUCs. If you're not using all
the radio ports, you can remove the radio blocks and paths that you aren't
using. And if you're not using the replay block then you should definitely
remove that since that takes a long time to build.

Also, you should not be rebuilding frequently, ideally. Simulation is a
much faster way to debug and test changes to your code. So it's usually
worth spending some time building a good testbench to make sure everything
works the way you expect before you rebuild the FPGA.

Wade


On Sun, Jun 12, 2022 at 2:40 AM sp h <stackprogramer@gmail.com> wrote:

> Is it possible that synthesis and generating bitstream in RFNOC blocks
> make faster??!!!
> I developed a custom RFNOC block, (I used example gain for RFNOC block)
> but when I want to synthesize Verilog code It takes long about 2 hours...
> For building the RFNOC bitstream image I used the below command:
>
>
>>      rfnoc_image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -I
>> /home/sp/Documents/rfnoc-module -p /home/sp/xilinx/Vivado -y
>> /home/sp/Documents/rfnoc-module/rfnoc/icores/gain_x300_rfnoc_image_core.yml
>
>
> My question is there any option that makes RFNOC synthesis faster? like
> incremental-implementation-vivado or any same case.
>
> https://www.xilinx.com/video/hardware/incremental-implementation-vivado.html
>
> Thanks in advance
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006ca3e405e15ac086
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi sp,</div><div><br></div><div>It is possible to use=
 incremental implementation using the checkpoints generated by the build fl=
ow, but I&#39;ve never tried it with USRPs. This is an advanced Vivado feat=
ure so you would need to write your own TCL code to use that feature. See t=
he Xilinx documentation for details. Keep in mind that this is only for imp=
lementation (not for synthesis) and it&#39;s only recommended for small and=
 isolated design changes.</div><div><br></div><div>Also, make sure when you=
 run the build process that it&#39;s not regenerating the IP. IP generation=
/synthesis should only happen once then those results should be reused for =
each future build. But if you do &quot;make cleanall&quot; it will delete a=
ll the IP build results.<br></div><div><br></div><div>A good way to reduce =
compilation time is to remove the parts of the RFNoC Image Core that you do=
n&#39;t need. For example, if you are only doing RX then you can remove the=
 TX paths, including the DUCs. If you&#39;re not using all the radio ports,=
 you can remove the radio blocks and paths that you aren&#39;t using. And i=
f you&#39;re not using the replay block then you should definitely remove t=
hat since that takes a long time to build.</div><div><br></div><div>Also, y=
ou should not be rebuilding frequently, ideally. Simulation is a much faste=
r way to debug and test changes to your code. So it&#39;s usually worth spe=
nding some time building a good testbench to make sure everything works the=
 way you expect before you rebuild the FPGA.</div><div><br></div><div>Wade<=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Sun, Jun 12, 2022 at 2:40 AM sp h &lt;<a href=3D"mai=
lto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Is i=
t possible that synthesis and generating bitstream in RFNOC blocks make fas=
ter??!!!<div>I developed a custom RFNOC block, (I used example gain for RFN=
OC block) but when I want to synthesize Verilog code It takes long about 2 =
hours...</div><div>For building the RFNOC bitstream image I used the below =
command:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><br>=C2=A0 =C2=A0 =C2=A0rfnoc_image_builder -F /home/sp/Documents/uhd-4=
.1.0.5/fpga -I /home/sp/Documents/rfnoc-module -p /home/sp/xilinx/Vivado -y=
 /home/sp/Documents/rfnoc-module/rfnoc/icores/gain_x300_rfnoc_image_core.ym=
l</blockquote><div><br></div><div>My question is there any option that make=
s RFNOC synthesis=C2=A0faster? like=C2=A0 incremental-implementation-vivado=
 or any same case.</div><div><a href=3D"https://www.xilinx.com/video/hardwa=
re/incremental-implementation-vivado.html" target=3D"_blank">https://www.xi=
linx.com/video/hardware/incremental-implementation-vivado.html</a><br></div=
><div><br></div><div>Thanks in advance</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006ca3e405e15ac086--

--===============0187457622712027191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0187457622712027191==--
