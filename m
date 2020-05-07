Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA681C9561
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 17:47:30 +0200 (CEST)
Received: from [::1] (port=51994 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWik9-0006gb-3s; Thu, 07 May 2020 11:47:25 -0400
Received: from mail-qv1-f48.google.com ([209.85.219.48]:39356)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jWik4-0006QP-OX
 for USRP-users@lists.ettus.com; Thu, 07 May 2020 11:47:20 -0400
Received: by mail-qv1-f48.google.com with SMTP id c4so2866278qvi.6
 for <USRP-users@lists.ettus.com>; Thu, 07 May 2020 08:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=G6bPQPxsc1nWBvXxHaQ+o8uDiYXLU5hR7+cEhxuktPM=;
 b=RmrVu2VzG5AJchrupFDs83hLxolCYlU7z723tMR5e9TOHYFxGlWfVRr14de4+WVihj
 5JhjiufImL1ZzwNVDQrrWW7nab/Pg5w/veKNwke5AJjJyCFEyWm2Ip574FsOvCIqnU1c
 Zhxfi3UPO8vybpGOjkfMFSml3Xkm9aSTx//7T3R7jGRA6NWn9UHJKt6572/3GWbVGJTE
 q39M3MzP5JBllqpt8U5fZqg/sGwvKMnMDKGfQpQu1UYwFECdeNUaVCtk2uvlqbIsxcW1
 IyMtdaQJWLfYkIll7XScaanDOrLmupCohTw84U+buJPDeqVcxnbh5LJArRhkzX1mWqrr
 tu4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=G6bPQPxsc1nWBvXxHaQ+o8uDiYXLU5hR7+cEhxuktPM=;
 b=aI9Dxeq0LsTFi3lXBPFUcVCQkRr5DnBqgV8jBLNZiFvTiH3Dz5oDmxH7RTAFF8rdsM
 Zj8sMMtG8eKK97c2iAN2gZHvUPCOl0sqgLyyUVu2J4j+BenUi9nh5jRVemT1PDvw+kEj
 B+ao9WYDrrCV/DwcAAsolbCeJQZVcJ3/6LjsXGp9FNl1CQahiCH88tCzox9scU/k2i7b
 hL4KPkWTBUJ5lyh3/uYcyuFHC5kGq/FzC21TZXL+f2Z/aT1YOjyz6O1YjDGkOMX3uNiQ
 ZuDj4mPZf06ZeMZEBySZh2nFskBV1/VmVh97LDHnZy4fm9tgSoHL7NSJ0liY/XFwsJxT
 3gwg==
X-Gm-Message-State: AGi0PubX0SdcS8g3L3qE91yCjj4JPY0U7TL9on2AKkewC4R9i4T3Ccaf
 vbDUg1T4IGmcChhtfoT0AxBqZBvyskY=
X-Google-Smtp-Source: APiQypI0piX/7GGEM62L3LwuN5liCfCPMLBOE1ggutHuWPprDvBHkGAydo7F6ZQTW52xrDqOBdbHbA==
X-Received: by 2002:ad4:5592:: with SMTP id e18mr14008093qvx.13.1588866400056; 
 Thu, 07 May 2020 08:46:40 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-12-103.dsl.bell.ca.
 [174.95.12.103])
 by smtp.gmail.com with ESMTPSA id d7sm2744190qkk.26.2020.05.07.08.46.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 08:46:39 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 7 May 2020 11:46:38 -0400
Message-Id: <916CE57E-721C-473C-B6D7-ACBC9093147E@gmail.com>
References: <7cbfa8fd-7351-a718-d35a-699bc7df2a28@wanadoo.fr>
In-Reply-To: <7cbfa8fd-7351-a718-d35a-699bc7df2a28@wanadoo.fr>
To: Jean Marie Brieussel <f6etu@wanadoo.fr>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] Clock Rate problem on N300
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5441176273922201086=="
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


--===============5441176273922201086==
Content-Type: multipart/alternative; boundary=Apple-Mail-B346DE8D-1F10-42EC-98D4-C9823334C671
Content-Transfer-Encoding: 7bit


--Apple-Mail-B346DE8D-1F10-42EC-98D4-C9823334C671
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Have you tried explicitly specifying it as a device argument? What version o=
f UHD are you running?

Sent from my iPhone

> On May 7, 2020, at 11:33 AM, Jean Marie Brieussel via USRP-users <usrp-use=
rs@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> Normally, the N300 has three programmable clock rate frequencies, 122.88 M=
Hz / 125 MHz / 153.6 MHz on my N300 I can't seem to have another clock rate t=
han 125 MHz. See the attached screenshot.
> Regards,
>=20
> Jean Marie
>=20
>=20
> 	Garanti sans virus. www.avast.com
> <test_a.png>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-B346DE8D-1F10-42EC-98D4-C9823334C671
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Have you tried explicitly specifying it as a=
 device argument? What version of UHD are you running?<br><br><div dir=3D"lt=
r">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">O=
n May 7, 2020, at 11:33 AM, Jean Marie Brieussel via USRP-users &lt;usrp-use=
rs@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"=
cite"><div dir=3D"ltr">=EF=BB=BF
 =20

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    <p>Hello,<br>
    </p>
    <span class=3D"tlid-translation translation" lang=3D"en"><span title=3D"=
" class=3D"">Normally, the N300 has three programmable clock rate
        frequencies, 122.88 MHz / 125 MHz / 153.6 MHz on my N300 I can't
        seem to have another clock rate than 125 MHz.</span> <span title=3D"=
">See the attached screenshot.</span><br>
    </span>
    <p><span class=3D"tlid-translation translation" lang=3D"en"><span title=3D=
"" class=3D"">Regards,</span></span><span class=3D"tlid-translation-gender-i=
ndicator
        translation-gender-indicator"></span></p>
    <p>Jean Marie<br>
    </p>
  <div id=3D"DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br> <table style=3D"bord=
er-top: 1px solid #D3D4DE;">
	<tbody><tr>
      <td style=3D"width: 55px; padding-top: 18px;"><a href=3D"https://www.a=
vast.com/sig-email?utm_medium=3Demail&amp;utm_source=3Dlink&amp;utm_campaign=
=3Dsig-email&amp;utm_content=3Demailclient" target=3D"_blank"><img src=3D"ht=
tps://ipmcdn.avast.com/images/icons/icon-envelope-tick-round-orange-animated=
-no-repeat-v1.gif" alt=3D"" width=3D"46" height=3D"29" style=3D"width: 46px;=
 height: 29px;" data-unique-identifier=3D""></a></td>
		<td style=3D"width: 470px; padding-top: 17px; color: #41424=
e; font-size: 13px; font-family: Arial, Helvetica, sans-serif; line-height: 1=
8px;">Garanti sans virus. <a href=3D"https://www.avast.com/sig-email?utm_med=
ium=3Demail&amp;utm_source=3Dlink&amp;utm_campaign=3Dsig-email&amp;utm_conte=
nt=3Demailclient" target=3D"_blank" style=3D"color: #4453ea;">www.avast.com<=
/a> 		</td>
	</tr>
</tbody></table>
<a href=3D"#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width=3D"1" height=3D"1"> <=
/a></div>

<div>&lt;test_a.png&gt;</div><span>_________________________________________=
______</span><br><span>USRP-users mailing list</span><br><span>USRP-users@li=
sts.ettus.com</span><br><span>http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com</span><br></div></blockquote></body></html>=

--Apple-Mail-B346DE8D-1F10-42EC-98D4-C9823334C671--


--===============5441176273922201086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5441176273922201086==--

