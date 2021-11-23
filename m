Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8C145AA4B
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 18:44:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64981383E21
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 12:44:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kiwf3pz+";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id A087B383C8C
	for <USRP-users@lists.ettus.com>; Tue, 23 Nov 2021 12:43:55 -0500 (EST)
Received: by mail-qt1-f180.google.com with SMTP id j17so48992qtx.2
        for <USRP-users@lists.ettus.com>; Tue, 23 Nov 2021 09:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=6kfPKUsKAjuQU+OlejxCZ4lqsul0Z3BZBh0grqnhvkY=;
        b=kiwf3pz+PO1xqJqZmoHyGaEBk60fbFs88soHHPJTXZa66KWcrPmr49w4/V0ZWaT8Dw
         m4ZOgJLmEi60ZpFFHnEvPyBUxL0Ta9QaN6Cp3KZkMENu9ObcMIVmAiZG0Nwv1l+Y30Ot
         OeSvVXphsV8It+O3LxGI7eoyKjd0EMGhwuLy8YcxWxhywRKv08eaL2qZMJN4f2UzfM2Z
         ll9OIVNVOzYNMw7OArVsP3xQsYm42pmsBfvQLl44MhsmtkvREv6uc/gODmfwvoz2/oIU
         pOfXuGO4R4Zbq2q1nyzn7qxqhP+NMUt52M/m92b4t+7Pv6GzVmgZgfz0B6CNiCfIBtqa
         hIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=6kfPKUsKAjuQU+OlejxCZ4lqsul0Z3BZBh0grqnhvkY=;
        b=PLHlMpI0weTTo/kMmWu4sdC9J+gwufmv3xf8Qu44RJ4xYH7vCPo+rBYEau9L3nKBS+
         MYPqVI2xB64ja8b8Jp0RuZpYPnXggvtBCvlNGAMaWXGXkK6Wbxn5gxrgUPbi50OpGisE
         +EAJeR1U2PwsxD4smNxYbl0sEVLVflYtoFKP+N6KSidRRrCavaWTCN1AeWMRU/ARGiSW
         d/56Nn0WB/1A4/dpAP9eZrSjXLG6kks4xvTOjx9UwNm1XAJFN49BzdGYR2UtaD7F0ckk
         13b4XWG4jJ6vGxgn0dBVdY+gmCzsHhDLn/K0GOFN2VlsHfSR6vlK9kY/sCTIJmN0puhF
         5lSQ==
X-Gm-Message-State: AOAM531+uFlqnRnHvFAHVU5OHjZAn1CR+VKL8PRYfi25uRauAWPKspQC
	FBFX/OeA0WDSVT7dejpH6sMH891NXPc=
X-Google-Smtp-Source: ABdhPJzyxuUgwxXPD87mp/dXOmAdQ3Z0WtLfEEIQ8lOSa5QtrZoxBmLcsGiyCo7sKrAomP5oP1ZW/w==
X-Received: by 2002:a05:622a:1447:: with SMTP id v7mr8141526qtx.92.1637689435019;
        Tue, 23 Nov 2021 09:43:55 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id de40sm6553635qkb.99.2021.11.23.09.43.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Nov 2021 09:43:54 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 23 Nov 2021 12:43:53 -0500
Message-Id: <F2B2D4E0-C35D-45B0-BDF1-FFF42E1BAB89@gmail.com>
References: <OL1P279MB00831EFE3B28943071A61160A0609@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
In-Reply-To: <OL1P279MB00831EFE3B28943071A61160A0609@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
To: =?utf-8?Q?"Skorstad,_J=C3=B8rn"?= <jsk@nkom.no>
X-Mailer: iPhone Mail (18H107)
Message-ID-Hash: IX5A6LCKCNGWBKZ6W424MODF4U6DHRGF
X-Message-ID-Hash: IX5A6LCKCNGWBKZ6W424MODF4U6DHRGF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 memory leak?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IX5A6LCKCNGWBKZ6W424MODF4U6DHRGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4078736484857550935=="


--===============4078736484857550935==
Content-Type: multipart/alternative; boundary=Apple-Mail-0D20EA05-E454-4F62-BA7F-9F23A7CF22FE
Content-Transfer-Encoding: 7bit


--Apple-Mail-0D20EA05-E454-4F62-BA7F-9F23A7CF22FE
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This looks like it might be a bug to me.=20



Sent from my iPhone

> On Nov 23, 2021, at 6:00 AM, Skorstad, J=C3=B8rn <jsk@nkom.no> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> I have some trouble using the UHD 4.1.0.2 library. I am using RFNOC blocks=
 RADIO and DDC, and setting up an RX stream using graph->create_rx_streamer.=
 The receiver loop is running in its own thread doing something like this (s=
implified):
> =20
> uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_=
MORE);
> stream_cmd.num_samps  =3D size_t(sampsPerBuff);
> stream_cmd.stream_now =3D true;
> stream_cmd.time_spec  =3D uhd::time_spec_t();
> =20
> for (;;) {
>   rx_stream->issue_stream_cmd(stream_cmd);
>   rx_stream->recv(&buffer.front(), sampsPerBuff, md, 3.0, false);
>   std::this_thread::sleep_for(std::chrono::milliseconds(2));
> }
> =20
> I am developing for an E310 sg3.
> =20
> When calling issue_stream_cmd repeatedly this way memory usage goes up unt=
il resources are depleted (few hours). If stream_cmd is replaced with STREAM=
_MODE_START_CONTINUOUS and called just once memory usage is normal. But for t=
he application developed the mode NUM_SAMPS_AND_MORE is better suited. It is=
 also what we used with the 3.14.1 library, without any memory problems like=
 this.
> =20
> Any tips?
> =20
> BR
> Jorn
> =20
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-0D20EA05-E454-4F62-BA7F-9F23A7CF22FE
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This looks like it might be a bug to me.&nb=
sp;<div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><di=
v dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 23, 2021, at 6:00 AM, Sko=
rstad, J=C3=B8rn &lt;jsk@nkom.no&gt; wrote:<br><br></blockquote></div><block=
quote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have some trouble using the UHD 4.1.0.2 library. I a=
m using RFNOC blocks RADIO and DDC, and setting up an RX stream using graph-=
&gt;create_rx_streamer. The receiver loop is running in its own thread doing=
 something like this (simplified):<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREA=
M_MODE_NUM_SAMPS_AND_MORE);<o:p></o:p></p>
<p class=3D"MsoNormal">stream_cmd.num_samps&nbsp; =3D size_t(sampsPerBuff);<=
o:p></o:p></p>
<p class=3D"MsoNormal">stream_cmd.stream_now =3D true;<o:p></o:p></p>
<p class=3D"MsoNormal">stream_cmd.time_spec&nbsp; =3D uhd::time_spec_t();<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">for (;;) {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; rx_stream-&gt;issue_stream_cmd(stream_cmd);<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; rx_stream-&gt;recv(&amp;buffer.front(), sampsP=
erBuff, md, 3.0, false);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; std::this_thread::sleep_for(std::chrono::milli=
seconds(2));<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am developing for an E310 sg3.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When calling issue_stream_cmd repeatedly this way mem=
ory usage goes up until resources are depleted (few hours). If stream_cmd is=
 replaced with STREAM_MODE_START_CONTINUOUS and called just once memory usag=
e is normal. But for the application
 developed the mode NUM_SAMPS_AND_MORE is better suited. It is also what we u=
sed with the 3.14.1 library, without any memory problems like this.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any tips?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BR <o:p></o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-0D20EA05-E454-4F62-BA7F-9F23A7CF22FE--

--===============4078736484857550935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4078736484857550935==--
