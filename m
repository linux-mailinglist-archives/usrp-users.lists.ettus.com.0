Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1884EA689F8
	for <lists+usrp-users@lfdr.de>; Wed, 19 Mar 2025 11:47:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 129B7385A7F
	for <lists+usrp-users@lfdr.de>; Wed, 19 Mar 2025 06:47:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742381267; bh=wGT6jRgBQHZtQWXXmqjyLZx6KLRf6cgF6SzzNpJLdUw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wbTdh4pFRI6nt8uTPjZQQhy0kFf/qzNO1kYnLRd9oP40e5WlycWANcjfJxxhEifFR
	 vfF/xb4LlNXdXWY6VA7Vsd5E4Y49qtDP5pQjSlAcq+VPUm1MpSxC6xpMS4Avgvd1bO
	 bECovGWBdZ+4kL2/m55Qam2QKDIvpixbsvahkQjV22O7Tz00to7rHiV+yWLBgggpq8
	 ZWrUh1wg986QE3UFOlXiF7CGplrniULDRHQhrWb3J5Xet5kIU9Rum+FhhTQ+bGlbOD
	 0xKnpZKJlRV7Zzc+GmW1w3xVP7wJsLEwlpW4QopVSSmpmF0TwJ7h4lV0cH8CEy5EWU
	 7hjkoedMuJ8vg==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E23A385985
	for <usrp-users@lists.ettus.com>; Wed, 19 Mar 2025 06:47:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="IUhdy1hx";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e5e63162a0so9909885a12.3
        for <usrp-users@lists.ettus.com>; Wed, 19 Mar 2025 03:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1742381224; x=1742986024; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MpXNFv5tjpc7zVIvAuVvRf3y37udKqtt0UN5w1MoiSs=;
        b=IUhdy1hxRfoeTWoigdHsMYhVIMeRgslhUhFxJMempJGmZSUSAQApkuSsp8dZWzwAXH
         NGsAKV58E7fcItbZtvk045Qpkh/lcus244tmhEQYGtu9UTcFUb9q32h2IovueQPCuTn1
         IeQy+ZMUJOToiPxztyVmP7ZZp6fD6v3E6ld+ETVaY2n/wWAXFAnM0EXMx85t8g87z5bZ
         s4kXXUKuc4Jz/cSXI3GlxtjjCIuSyFTm7AV1lfW3wPQiUvZmWWi66REfIWzWjAPaA8jw
         vi+QbJ90suVSbrrSv/TE0wfif85VZoab0GWxrz0nOkQxeKbr7hTGBjgvMPm+ZvM575g2
         rUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742381224; x=1742986024;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MpXNFv5tjpc7zVIvAuVvRf3y37udKqtt0UN5w1MoiSs=;
        b=NdZbjYSTJa5OB+zhJsLkQz4Y2Jw+V9TVO0zRTBw+7u+4wfiz5zA746CWU+uJtGALkJ
         eOiqW9VgeAe2ZW9eVgWVwFs9jUMEugj199FLtPJ2a2uGk823tQeiTdiAO6/B5v6TN8vP
         ssq6Gvyh2Fi1Vjjv/KIaEqtO9AVVocsxvFi5XD2OiUyJ+SkFcPyxmcadeSgwrnTYQ/ft
         tTxXYzGN4RHjtO0vwteJfuA0sp4e8ydPArVg3d2O02kafWutrB7rewiHI3295d9SB4Sc
         nMy2kOyicVatqT3KyPK0ITUORC7p8JSSuPpiJn6fldunl1tOFf8eA6aG7LzOwotl2v3D
         Pf6A==
X-Gm-Message-State: AOJu0YzstUd0gHRhkhP9kF2TeSszdV3Zv8/XSanSydy2R9BOKPzkodmO
	cJjp8kwBxTYVvHLUvBp9PFvBtSjz2tXwBzq6HmPzWQdEixp4RsAuYIaYDL/UNQqaWy+nLMHfvnA
	Tdb5sp/uz2DLMuHXporpg2ufYL6p4SjlSKLQD1hj1gCh+Z2EkVpg=
X-Gm-Gg: ASbGncsrb0K8FcaGIHlJBZx93iqhAgfL1saz+4AlpohnfxenywWSK5wA91AyASrFqX/
	bl7yJJq33L9Ciu1yAbhHFZaK9o2dxsz8wdVrVk8WOjX4ZMk/+cFXB1DhPXe+vvWRcb0sTjaNZ0/
	BLHq8SnBa3wmdYVXi8YvaZeJTJUpvEmeXqXpnlis9npBoJzmrFFFE2JPIHCA==
X-Google-Smtp-Source: AGHT+IF/9ScSlooMXkGvrWcAIqh90CMzICL2h0fVWAjzTwZiJPoTDzKGxW6vEvK67gYLxP5lJVnqNcyejbglD4JKJko=
X-Received: by 2002:a05:6402:354e:b0:5e6:13bf:2c7c with SMTP id
 4fb4d7f45d1cf-5eb80cda978mr2158672a12.9.1742381223895; Wed, 19 Mar 2025
 03:47:03 -0700 (PDT)
MIME-Version: 1.0
References: <b02c97f1-c0f2-42ee-9634-6b4db87b6bc2@student.uclouvain.be>
 <ndvfv4gyhxiiciggelyb4wxqal4iskwl42zqwm3dpqyqmobvlv@iluybtxe234d> <7378136c-86c0-403c-9eed-20e1b563b0ea@student.uclouvain.be>
In-Reply-To: <7378136c-86c0-403c-9eed-20e1b563b0ea@student.uclouvain.be>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 19 Mar 2025 11:46:52 +0100
X-Gm-Features: AQ5f1JpB6IoKujxGS86xcKHfT4Zq59Skixl1nyeVzbsTK7-FV4hNRvozKd7D1GM
Message-ID: <CAFOi1A6U43kNOhxMLV0Usno+0cAQ5=oSvdj2Yuni=h2qA4EEyw@mail.gmail.com>
To: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Message-ID-Hash: SDOXDBJ753UHYKROMBGM7VVP6X72ETU5
X-Message-ID-Hash: SDOXDBJ753UHYKROMBGM7VVP6X72ETU5
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM Reciever chain on USRPx310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SDOXDBJ753UHYKROMBGM7VVP6X72ETU5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7493866882741604427=="

--===============7493866882741604427==
Content-Type: multipart/alternative; boundary="000000000000ea02c40630afbdec"

--000000000000ea02c40630afbdec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 6, 2025 at 8:07=E2=80=AFPM Quentin Prieels <
quentin.prieels@student.uclouvain.be> wrote:

> Hello C=C3=A9dric, Hello everyone
>
> Thanks for your replies.  I will try to use or be inspired by those
> blocks.
>
> I have a slightly more specific question on this subject. Do you know how
> to integrate the codes in the fpga/usrp3/lib/blocks/rnfoc folder into a n=
ew
> OOT block/module? Do you instantiate them in the same way as the =E2=80=
=98mult_rc=E2=80=99
> IP (the one in the "HDL_IP" parameter) in the example of the gain module?
> To structure the code, is it possible to define how to move this code
> within the OOT block?
>

You can reference them in your custom Verilog simply by module name. In
your OOT module, make sure to reference them in the Makefile.srcs. You
might have to add an include line to your RFNoC block's Makefile.

--M


> Thanks for your help, I appreciate.
>
> Quentin
> On 6/03/25 16:53, C=C3=A9dric Hannotier wrote:
>
> [Vous ne recevez pas souvent de courriers de cedric.hannotier@ulb.be. D=
=C3=A9couvrez pourquoi ceci est important =C3=A0 https://aka.ms/LearnAboutS=
enderIdentification ]
>
> On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
> Hello Quentin,
>
> On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
>
> As part of a research project, I'm looking to implement an OFDM receiver =
on
> the FPGA of a USRPx310 (and more specifically, the synchronisation stage)=
.
> According to my research, some RFNoC blocks with this function already
> perform this function. Where can I find them?
>
> AFAIR, there are some RFNoC blocks in a branch over the old FPGA repo:htt=
ps://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com=
%2FEttusResearch%2Ffpga%2Ftree%2Frfnoc-ofdm&data=3D05%7C02%7Cquentin.prieel=
s%40student.uclouvain.be%7C3ae893fb4a284ca44e9f08dd5cc714ca%7C7ab090d4fa2e4=
ecfbc7c4127b4d582ec%7C1%7C0%7C638768732336272267%7CUnknown%7CTWFpbGZsb3d8ey=
JFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsI=
ldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DdaAwbNquMCdD0qG2gSu73Zv9XjU8OF03P4YAY%=
2BncKVw%3D&reserved=3D0 <https://github.com/EttusResearch/fpga/tree/rfnoc-o=
fdm>
> for example:https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3=
A%2F%2Fgithub.com%2FEttusResearch%2Ffpga%2Fblob%2Frfnoc-ofdm%2Fusrp3%2Flib%=
2Frfnoc%2Fofdm_peak_detector.v&data=3D05%7C02%7Cquentin.prieels%40student.u=
clouvain.be%7C3ae893fb4a284ca44e9f08dd5cc714ca%7C7ab090d4fa2e4ecfbc7c4127b4=
d582ec%7C1%7C0%7C638768732336299309%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGk=
iOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%=
3D%7C0%7C%7C%7C&sdata=3DXnKpXNpmd9RTNmyF%2FFewBEL8MpL32bbe%2B1S1aUtyr%2Bo%3=
D&reserved=3D0 <https://github.com/EttusResearch/fpga/blob/rfnoc-ofdm/usrp3=
/lib/rfnoc/ofdm_peak_detector.v>
> Apart from Schmidl&Cox, I don't see anything merged into the default bran=
ch.
>
> Never used them. Don't know how accurate they are.
> Note that they are 7-8 years old...
>
> Best
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ea02c40630afbdec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 6, 2025=
 at 8:07=E2=80=AFPM Quentin Prieels &lt;<a href=3D"mailto:quentin.prieels@s=
tudent.uclouvain.be">quentin.prieels@student.uclouvain.be</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
  <div>
    <p><font face=3D"Aptos">Hello C=C3=A9dric, Hello everyone<br>
      </font></p>
    <p><font face=3D"Aptos">Thanks for your replies.=C2=A0 I will try to us=
e or
        be inspired by those blocks.=C2=A0</font></p>
    <p><font face=3D"Aptos">I have a slightly more specific question on
        this subject. Do you know how to integrate the codes in the
        fpga/usrp3/lib/blocks/rnfoc folder into a new OOT block/module?
        Do you instantiate them in the same way as the =E2=80=98mult_rc=E2=
=80=99 IP (the
        one in the &quot;HDL_IP&quot; parameter) in the example of the gain
        module? To structure the code, is it possible to define how to
        move this code within the OOT block? <br></font></p></div></blockqu=
ote><div><br></div><div>You can reference them in your custom Verilog simpl=
y by module name. In your OOT module, make sure to reference them in the Ma=
kefile.srcs. You might have to add an include line to your RFNoC block&#39;=
s Makefile.</div><div><br></div><div>--M</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div><p><font face=3D"Aptos">
      </font></p>
    <p><font face=3D"Aptos">Thanks for your help, I appreciate.</font></p>
    <p><font face=3D"Aptos">Quentin<br>
      </font></p>
    <div>On 6/03/25 16:53, C=C3=A9dric Hannotier
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre>[Vous ne recevez pas souvent de courriers de <a href=3D"mailto:c=
edric.hannotier@ulb.be" target=3D"_blank">cedric.hannotier@ulb.be</a>. D=C3=
=A9couvrez pourquoi ceci est important =C3=A0 <a href=3D"https://aka.ms/Lea=
rnAboutSenderIdentification" target=3D"_blank">https://aka.ms/LearnAboutSen=
derIdentification</a> ]

On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
Hello Quentin,

On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
</pre>
      <blockquote type=3D"cite">
        <pre>As part of a research project, I&#39;m looking to implement an=
 OFDM receiver on
the FPGA of a USRPx310 (and more specifically, the synchronisation stage).
According to my research, some RFNoC blocks with this function already
perform this function. Where can I find them?
</pre>
      </blockquote>
      <pre>AFAIR, there are some RFNoC blocks in a branch over the old FPGA=
 repo:
<a href=3D"https://github.com/EttusResearch/fpga/tree/rfnoc-ofdm" target=3D=
"_blank">https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Fgithub.com%2FEttusResearch%2Ffpga%2Ftree%2Frfnoc-ofdm&amp;data=3D05%7C02%=
7Cquentin.prieels%40student.uclouvain.be%7C3ae893fb4a284ca44e9f08dd5cc714ca=
%7C7ab090d4fa2e4ecfbc7c4127b4d582ec%7C1%7C0%7C638768732336272267%7CUnknown%=
7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsI=
kFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=3DdaAwbNquMCdD0qG2gS=
u73Zv9XjU8OF03P4YAY%2BncKVw%3D&amp;reserved=3D0</a>
for example:
<a href=3D"https://github.com/EttusResearch/fpga/blob/rfnoc-ofdm/usrp3/lib/=
rfnoc/ofdm_peak_detector.v" target=3D"_blank">https://eur03.safelinks.prote=
ction.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2FEttusResearch%2Ffpga%2F=
blob%2Frfnoc-ofdm%2Fusrp3%2Flib%2Frfnoc%2Fofdm_peak_detector.v&amp;data=3D0=
5%7C02%7Cquentin.prieels%40student.uclouvain.be%7C3ae893fb4a284ca44e9f08dd5=
cc714ca%7C7ab090d4fa2e4ecfbc7c4127b4d582ec%7C1%7C0%7C638768732336299309%7CU=
nknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW=
4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=3DXnKpXNpmd9R=
TNmyF%2FFewBEL8MpL32bbe%2B1S1aUtyr%2Bo%3D&amp;reserved=3D0</a>
Apart from Schmidl&amp;Cox, I don&#39;t see anything merged into the defaul=
t branch.

Never used them. Don&#39;t know how accurate they are.
Note that they are 7-8 years old...

Best
--

C=C3=A9dric Hannotier
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000ea02c40630afbdec--

--===============7493866882741604427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7493866882741604427==--
