Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 577BE23DEE3
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 19:34:25 +0200 (CEST)
Received: from [::1] (port=53166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3jma-00041a-3h; Thu, 06 Aug 2020 13:34:24 -0400
Received: from mail-qv1-f44.google.com ([209.85.219.44]:43803)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k3jmW-0003YW-5s
 for USRP-users@lists.ettus.com; Thu, 06 Aug 2020 13:34:20 -0400
Received: by mail-qv1-f44.google.com with SMTP id l13so16442784qvt.10
 for <USRP-users@lists.ettus.com>; Thu, 06 Aug 2020 10:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=8RHe6Zq0lU3fwqijrfWrcbZsY/fRgNdQvqRDmfXmOjo=;
 b=hBGEgEbe7D5wU8PsRCkOH05hgChnlJ5nCYXPJNIgU9IS46148Vxkao98REnbd4X1Eq
 LaUk52MEtHxOUQy/GeUJ+ZXXaTwS0WP+h8TE/nh15oplfXk2shUqbXV4iMtvgATQ5Dhv
 cIIz9XFrM37wmeB+PjuioXWJt5tCZjp0E0uOpvGGwn589XugcZQ4xFhHUCnAkpmB0ZYF
 QCrFZMu30EEGZARBFyEVMA4GTC/DtZOlFjlGHwqZ4yYNE9a7V1NA+/u+GMIuUUczA2/C
 Z/yahlCX5mg8AFfQyH7i+JWuTJQha7ntDIfYP2PkG00xkbnMGZaZUEFb3Kwgs4T8TFuY
 QKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=8RHe6Zq0lU3fwqijrfWrcbZsY/fRgNdQvqRDmfXmOjo=;
 b=pl1MiqHuSU2Fm46cQ15uAT6kK4ss8XReOBC8O8pYuoTbEEWxQrAVhg6p2NpqaTcWfd
 bQ9cumdcXp44R5cjQQmofsv7upxk12l+sN79KeIeSq+l0ZoQJC7UZrW+Kc477jY7iNoq
 Dt3o08NnvtZH1JE0lsGJX0Z9NOT2k7eR3Jw9teZdC5SpEjwp9xCsf5hs9fgzjZmi6M1k
 /PF3rFdXqXwG30Oc69WhvQsqielEyi12o7CsgfQQGXpfQfP0skuRV20XechPR+o98Vqs
 LlQWT3Dk3bBU0cZyHtYUkJpUNaSwMsvAcFLi1lapQEQDQRClF8LCrEQbzovpTBjgAHK3
 PglA==
X-Gm-Message-State: AOAM531r3gT/m7BxllY86dyi40DeUjsCRGsP3SLXttBNLu4btA7Lsicn
 9ldSXcw+8JBBsNO1FEqp76F1Dg5JxCw=
X-Google-Smtp-Source: ABdhPJzeOrkGTJhK8+zOavEIFPJGDzikcTN9+k/19Fdr4UBye4+rI9o2DxWcgn+uUfuWq7DUTXd5ag==
X-Received: by 2002:a0c:b310:: with SMTP id s16mr9927420qve.5.1596735219493;
 Thu, 06 Aug 2020 10:33:39 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id h24sm4612281qkk.72.2020.08.06.10.33.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Aug 2020 10:33:38 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 6 Aug 2020 13:33:37 -0400
Message-Id: <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
References: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
In-Reply-To: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] Signal transmission on a USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============2071940771259261187=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============2071940771259261187==
Content-Type: multipart/alternative; boundary=Apple-Mail-3BF99E88-C661-45FA-AC2A-FDC8FE1641C1
Content-Transfer-Encoding: 7bit


--Apple-Mail-3BF99E88-C661-45FA-AC2A-FDC8FE1641C1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Does the spur follow the tuned frequency?

Sent from my iPhone

> On Aug 6, 2020, at 1:12 PM, Jerrid Plymale via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> Marcus,
> =20
> Ok that makes sense, I thought it might be something to do with the mixers=
 and leakage, but I wasn=E2=80=99t sure. So I have tried lowering the gain t=
o 0 dB, and there is no change in the signal. The signal does cause problems=
 as I am working on a GPS related application, so even though -100 dBm is a w=
eek signal, its still stronger than GPS. Are there any options other than pr=
e-filtering the received signal to mitigate the undesired signal around base=
band? Is there a way using hardware I can reduce leakage at the terminal?
> =20
> Best regards,
> =20
> Jerrid Plymale
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-3BF99E88-C661-45FA-AC2A-FDC8FE1641C1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Does the spur follow the tuned frequency?<b=
r><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockq=
uote type=3D"cite">On Aug 6, 2020, at 1:12 PM, Jerrid Plymale via USRP-users=
 &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockq=
uote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Marcus,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ok that makes sense, I thought it might be something t=
o do with the mixers and leakage, but I wasn=E2=80=99t sure. So I have tried=
 lowering the gain to 0 dB, and there is no change in the signal. The signal=
 does cause problems as I am working on
 a GPS related application, so even though -100 dBm is a week signal, its st=
ill stronger than GPS. Are there any options other than pre-filtering the re=
ceived signal to mitigate the undesired signal around baseband? Is there a w=
ay using hardware I can reduce
 leakage at the terminal?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid Plymale<b><o:p></o:p></b></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-3BF99E88-C661-45FA-AC2A-FDC8FE1641C1--


--===============2071940771259261187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2071940771259261187==--

