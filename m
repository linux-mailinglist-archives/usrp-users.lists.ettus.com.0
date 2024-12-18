Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DF79F6A58
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2024 16:46:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62B92385A30
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2024 10:46:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734536813; bh=xXQ0/CAazeIksdUsvcmzTFMh0gag3XLe0TjTCsp6P/A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Lapad1F4Iam9c1obrmbC7f4lMePK/wpfrV+SfXbN0GXFKSvXkf/AYF+EwSyn5+SBP
	 i/ZDYCManwh/1v86+jioGFxCVWcw0i/Ts0BoS1Mo/dwD+g2mpdaosl+37e78u56u/Z
	 NHjZBLSIKz48mH5UurYjYJw9lbqumMCl4feKHRJfGkLafW6H9AIdz0r9buyV1cXVQc
	 pUjuOWvuPT/f0BrntLGV0XOgTAXvZgRUBK6I77tFxBQ4yn8mN+t41mEUXPJb33Gegc
	 OT9Gkve1QLoHxOCjLLFcn7SQeAJJsuUGeLkPjBqcs64SSoqQKEn1iWGBcR7gaiCLWl
	 iGCLCTgEiwu/g==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F1EF385849
	for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2024 10:45:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LLXCHeIm";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5d3dce16a3dso1699392a12.1
        for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2024 07:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734536752; x=1735141552; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UHOYTPgoOzy7wmvcCqSQbfModSO++BLIb8entWCBBFU=;
        b=LLXCHeImdqxkut4LBKE5YQPMzA9zvvKmsWD2x0RQ578JGkj/5r7EKfLL5+7yV685Ci
         oP1IGuGvcz0ptqD5+Os00odlZByuMBjQFjZHXNCrKYXl/yaT59JtnL0NBABqYw4mw/0c
         tjf+W0Vo5IYwotXIaY0JppWCDNRhKI3CEqFgOjBVoTOZ9zYYTYWGr6h4r1DcLvcPFybQ
         f/H0Q3b5gHw0FKGcXpyepOEvzPMBRLl0vVKKuSq5KvpUUM9CjVwm3S8zG20WYsNnqinF
         DrpnPFUJSmbd1ko06lM+CAANVDYkHNwnLJmdXmqCl1eYZtoTa5ykiJA+hdwpISVRnGWr
         NNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734536752; x=1735141552;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UHOYTPgoOzy7wmvcCqSQbfModSO++BLIb8entWCBBFU=;
        b=SVfei0nTawU2rVRL4tsBtH4im8ccxK/lAT701KyPqRQcvQjLMMe2Jrq7t/TjCQQTOx
         rdUibWmf4QdxTQ3cD2wMkb2kUl4YHf8Dw+dF0rLc/2FzMPBIqe+WFqslPxOGE0wX2MiN
         2j8AtSTV1d74amtqEx376cSe6JkaDGX5w0o3cvr3W2t90pggSnkuG4AGfRDiJdvDlmgq
         h6RK8JK1vQab3ZwHpwBAVA9TPl9/pyWIhm72xOt+sgfkUsw8JPuAqogRxVV/CWWJo68L
         w8FuBLg2oakSYdAcDodMS7Ie+wnb2T8n4XgNAhkJukEW9YadGR9D2ztWSinGC4Q9lluW
         DuVw==
X-Forwarded-Encrypted: i=1; AJvYcCX6Px4JP34jjPPLBBZFXYGNO11r+8MPOl4hGOpTBcUG/+aIqKCEXdtlgRIHqdiXrMoP2mch5e0jKrAp@lists.ettus.com
X-Gm-Message-State: AOJu0YwD3oXgJWk/Rm70OcV086DIKrB3KAGGOaIDBt5fX9gz6opGDd+L
	ZsMfsiTNiocynfFoDyw2ryFbOg2Hby+vsRR9xzTm3ASa3I2x3YHlKSu897v2G1x9cDVibmXQ5ks
	Oj99PtuyC8xGOmrL/LzOYbApfAMs=
X-Gm-Gg: ASbGncvbxAgyGBTSh66h9KdcgEejohEAgtzIzYAY6WKn7k5VN5EWwdeuTLJL0ZfEEfY
	Xk0koL8YUpyXWNKIkjxSMn8feJZ9WNpXJzhNNO9SkECPZyLsxDU77qxNqognep78+2IHHoQ==
X-Google-Smtp-Source: AGHT+IGDu7W15FwKL2Uzw99C3AnGfVn0K8VfQ0erS/yrl2bfS2AgXIbJJLGLWBxRse48GZBlMZ81FteO2iObB9P5idg=
X-Received: by 2002:a05:6402:13cf:b0:5d0:ece3:158a with SMTP id
 4fb4d7f45d1cf-5d7d5569cf7mr7077407a12.3.1734536751961; Wed, 18 Dec 2024
 07:45:51 -0800 (PST)
MIME-Version: 1.0
References: <CAP=wbzPCCOD_cFR-Grtp0JsqR0JJLLOeDin3gGmbYkUEy6jzZw@mail.gmail.com>
 <PH0PR10MB46784514FA4F3B576848845499052@PH0PR10MB4678.namprd10.prod.outlook.com>
In-Reply-To: <PH0PR10MB46784514FA4F3B576848845499052@PH0PR10MB4678.namprd10.prod.outlook.com>
From: Elkana David Cohen <elkana443@gmail.com>
Date: Wed, 18 Dec 2024 17:45:17 +0200
Message-ID: <CAFKvhDUy8-qr-okkjT2gU58u7Oa7J84c8ELdAaDgm2mKxBruWw@mail.gmail.com>
To: "Anderseck, Martin" <martin.anderseck@emerson.com>, usrp-users@lists.ettus.com
Message-ID-Hash: HPHJI6R5UOJTB6PD6D7HVAYPS3T2JRWM
X-Message-ID-Hash: HPHJI6R5UOJTB6PD6D7HVAYPS3T2JRWM
X-MailFrom: elkana443@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRPN310 not connecting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HPHJI6R5UOJTB6PD6D7HVAYPS3T2JRWM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3779049961585783006=="

--===============3779049961585783006==
Content-Type: multipart/alternative; boundary="000000000000f35f8006298d4e11"

--000000000000f35f8006298d4e11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin
If I run the command without changing the file parameters I get the error
ERROR: [ Synth 8-448] named port connection 'gtrefclk' does not exist for
instance 'core_support_i' of module 'one_gig_eth_pcs_pma_support'
ERROR: [ Synth 8-448] named port connection 'gtrefclk_bufg' does not exist
for instance 'core_support_i' of module 'one_gig_eth_pcs_pma_support'
ERROR: [ Synth 8-6156] failed synthesizing module 'one_gige_phy'
ERROR: [ Synth 8-6156] failed synthesizing module 'x300_sfpp_io_core'
ERROR: [ Synth 8-6156] failed synthesizing module 'x300'
ERROR[Common 17-69] ...

if I change the clk_domains and add :
srcblk:_device_, srcport:ce, dstblk:gain0, dstport: ce
I get the error:
[ERR] 1 Unresolved clk domain(s)
[ERR] (_device_-> gain0-ce)
[ERR] Source or destination domain not found

if I change the clk_domains from ce to rfnoc_chdr
I get the error:
ERROR: [synth 8-1031] gain0_rfnoc_chdr_clk is not
declare[../../x310_rfnoc_image_core.v:1216]
ERROR: [Common 17-69] Command failed ..

I tried more configurations but all don't work
I can build images for RFNoC blocks (FFT, FIR, etc) but for OOT I don't.

Thank you
Elkana




=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=
=B3, 18 =D7=91=D7=93=D7=A6=D7=9E=D7=B3 2024 =D7=91-17:19 =D7=9E=D7=90=D7=AA=
 =E2=80=AAAnderseck, Martin via
USRP-users=E2=80=AC=E2=80=8F <=E2=80=AAusrp-users@lists.ettus.com=E2=80=AC=
=E2=80=8F>:=E2=80=AC

> Depending on what exactly doesn't work you can try to update the file
> system on the device:
>
>
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_Linux_File_System
>
>
>
> You should be able to ssh into the system. If that works and only UHD is
> unable to find the device then something is wrong with the hardware demon=
.
> If you cannot even connect via ssh then it is most probably an issue with
> the network connection. There is a serial console available which you can
> use to debug in that case. This is explained in the knowledge base
> article, too.
>
>
>
> /Martin
>
>
>
> *From:* Muhammed Mustaqim <abacus82@gmail.com>
> *Sent:* Wednesday, December 18, 2024 10:01 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] [USRP-users] USRPN310 not connecting
>
>
>
> Hi Everyone,  I have USRP N310, when I connect it to my laptop/PC it is
> not showing
>
> Hi Everyone,
>
> I have USRP N310, when I connect it to my laptop/PC it is not showing tha=
t
> it is connected, while the other One is connecting fine and I was able to
> use it.
>
>
>
> Is there a way I can reset MY USRP N310??
>
>
>
>
>
> Best Regards,
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f35f8006298d4e11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">Hi Martin=C2=A0</div><div dir=3D"ltr">If =
I run the command without changing the file parameters I get the error <br>=
ERROR: [ Synth 8-448] named port connection &#39;gtrefclk&#39; does not exi=
st for instance &#39;core_support_i&#39; of module &#39;one_gig_eth_pcs_pma=
_support&#39;<br>ERROR: [ Synth 8-448] named port connection &#39;gtrefclk_=
bufg&#39; does not exist for instance &#39;core_support_i&#39; of module &#=
39;one_gig_eth_pcs_pma_support&#39;<br>ERROR: [ Synth 8-6156] failed synthe=
sizing module &#39;one_gige_phy&#39;<br>ERROR: [ Synth 8-6156] failed synth=
esizing module &#39;x300_sfpp_io_core&#39;<br>ERROR: [ Synth 8-6156] failed=
 synthesizing module &#39;x300&#39;<br>ERROR[Common 17-69] ...<br><br>if I =
change the clk_domains and add :<br>srcblk:_device_, srcport:ce, dstblk:gai=
n0, dstport: ce <br>I get the error:<br>[ERR] 1 Unresolved clk domain(s)<br=
>[ERR] (_device_-&gt; gain0-ce)<br>[ERR] Source or destination domain not f=
ound<br><br>if I change the clk_domains from ce to rfnoc_chdr <br>I get the=
 error:<br>ERROR: [synth 8-1031] gain0_rfnoc_chdr_clk is not declare[../../=
x310_rfnoc_image_core.v:1216]<br>ERROR: [Common 17-69] Command failed ..<br=
><br>I tried more configurations but all don&#39;t work<br>I can build imag=
es for RFNoC blocks (FFT, FIR, etc) but for OOT I don&#39;t.<br>=C2=A0 <br>=
Thank you <br>Elkana<br><br><br>=C2=A0</div></div><br><div class=3D"gmail_q=
uote gmail_quote_container"><div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=
=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=B3, 18 =
=D7=91=D7=93=D7=A6=D7=9E=D7=B3 2024 =D7=91-17:19 =D7=9E=D7=90=D7=AA =E2=80=
=AAAnderseck, Martin via USRP-users=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=E2=80=
=AC=E2=80=8F&gt;:=E2=80=AC<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"msg8112981092191830671">





<div lang=3D"DE" style=3D"overflow-wrap: break-word;">
<div class=3D"m_8112981092191830671WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Depending on what exactly doesn=
&#39;t work you can try to update the file system on the device:
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/=
N321_Getting_Started_Guide#Updating_the_Linux_File_System" target=3D"_blank=
"><span lang=3D"EN-US">https://kb.ettus.com/USRP_N300/N310/N320/N321_Gettin=
g_Started_Guide#Updating_the_Linux_File_System</span></a><span lang=3D"EN-U=
S"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">You should be able to ssh into =
the system. If that works and only UHD is unable to find the device then so=
mething is wrong with the hardware demon. If you cannot even connect via ss=
h then it is most probably an issue
 with the network connection. There is a serial console available which you=
 can use to debug in that case.
</span>This is explained in the knowledge base article, too.<u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">/Martin <u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif">From:</span></b><span lang=3D"EN-US" style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif"> Muhammed Mustaqim &lt;<a hre=
f=3D"mailto:abacus82@gmail.com" target=3D"_blank">abacus82@gmail.com</a>&gt=
;
<br>
<b>Sent:</b> Wednesday, December 18, 2024 10:01 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXTERNAL] [USRP-users] USRPN310 not connecting<u></u><u></=
u></span></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:1pt;color:white">Hi Everyon=
e,=C2=A0 I have USRP N310, when I connect it to my laptop/PC it is not show=
ing
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal">Hi Everyone,=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">I have USRP N310, when I connect it to my laptop/PC =
it is not showing that it is connected, while the other One is connecting f=
ine and I was able to use it.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Is there a way I can reset MY USRP N310??<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Best Regards,=C2=A0<u></u><u></u></p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000f35f8006298d4e11--

--===============3779049961585783006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3779049961585783006==--
