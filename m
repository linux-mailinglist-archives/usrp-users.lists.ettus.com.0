Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 772822CB859
	for <lists+usrp-users@lfdr.de>; Wed,  2 Dec 2020 10:16:51 +0100 (CET)
Received: from [::1] (port=42298 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kkOFk-0000US-MK; Wed, 02 Dec 2020 04:16:48 -0500
Received: from mail-yb1-f200.google.com ([209.85.219.200]:33125)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1kkOFg-0000MS-KR
 for usrp-users@lists.ettus.com; Wed, 02 Dec 2020 04:16:44 -0500
Received: by mail-yb1-f200.google.com with SMTP id z3so1068151ybc.0
 for <usrp-users@lists.ettus.com>; Wed, 02 Dec 2020 01:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IZ0/TxDFp0eJi3OpMSxdPSvf9MS8SAHdPvG1a3LOkVc=;
 b=NaBDgOmYiJ+HrEbzfCTTRFniPCfUbt1k4S3/Wiz6IxsTXGVBuBla6geHHHT8aOpYct
 9hDFlNTivxXPwlzGWPohNfqjWT0G7QTdxz4HtZx76P8BUihaKhSArI1saJtMiVQFRJt7
 Z1TWn3Q3txYzmVRxeZlZEtDsLVQXMQPoVRIO4VR9Nx/PFXeR9lkYb6B/GyNiRpU75Kkg
 grAfAfjbuRMzy7gUFgEKSWwSmL/2SLnbmsdfGqDMoa3GmQ8eRu9N1B4GHz/hWaSvL2ir
 6H24253MROYRIEkp+iNETOmoEodu3RWbyVC2XVXupdRdHyCPGJBBpcWQxn73jXQZaW5j
 DAfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IZ0/TxDFp0eJi3OpMSxdPSvf9MS8SAHdPvG1a3LOkVc=;
 b=KpIqMRkh9honnn8a691kXFPBLdH62iJC8rKyOJzZhHJN2WuDja6SBjXIT61NUMqY3N
 JHMJkZlgXJScOvPH7Zp6zzaTTQBjEiVdKbY16dRhet6egXPLyHVpnRlhbPy/M+w8PawH
 zgfR5Y9mvUWxOxDqMjxRP1vLLzm0uycHswk959/ZPFtqBNZ0MGMQ8UqtVAtl5KwFl+2v
 x4jkskIF0Wf/9dkVhmVyJU39EogvoaJ181znIRYKfzvW7sHFFCd7KrlOgyhCBVz3yzBZ
 o6+9Rxu7RymJpxp9dbMW3VrlsI+D4+IsrdtP3ZISZD5twRGCGLAN2uWaVKN3OCogWLng
 8BrA==
X-Gm-Message-State: AOAM5303yE129kQilvcz4PhPsgKnmOeGSo5ViEs19uqZoC6WDcEiSFKC
 32q/YCnBajX1+pU81EX/FW0JKtniOpFJuIF+fnKlOQ==
X-Google-Smtp-Source: ABdhPJzApqGRpBNckSWAtbO9DL4h1RU0T+dzh+gtoezql54BfWoaIwh+ch/pmWrc0eSHLCha4ksT37HOzkS965lBvi4=
X-Received: by 2002:a25:cad7:: with SMTP id a206mr1828241ybg.418.1606900563965; 
 Wed, 02 Dec 2020 01:16:03 -0800 (PST)
MIME-Version: 1.0
References: <CABfZwcdtAKu7rtAu=6yLB4WJY1Amt2svXjF7zygULdLEhKZmCA@mail.gmail.com>
 <aba9b85d-e604-1fb0-b305-c3f5e7ec840b@ettus.com>
In-Reply-To: <aba9b85d-e604-1fb0-b305-c3f5e7ec840b@ettus.com>
Date: Wed, 2 Dec 2020 18:15:29 +0900
Message-ID: <CABfZwcdR3+GS2ED95E6TGmn32UuLo+ZytgLQTaG1R109XEDszw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Can I detect a wiretype of USB device?
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
From: Mikio Fukushima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mikio Fukushima <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============6740359587137562651=="
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

--===============6740359587137562651==
Content-Type: multipart/alternative; boundary="0000000000004e127d05b577b113"

--0000000000004e127d05b577b113
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,
Thank you for your mail.

I done based on your information as follows.

>> code here <<

uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);

string devicename =
usrp->get_device()->get_tree()->access<string>("/mboards/0/name").get();
double maxrate =
usrp->get_device()->get_tree()->access<double>("/mboards/0/link_max_rate").get();
if((devicename == "B200" or devicename == "B200mini") and maxrate <
500000000)
{

}

>> code end <<

Thank you.

--0000000000004e127d05b577b113
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div>Thank you for your mail.</=
div><div><br></div><div>I done based on your information as follows.<br></d=
iv><div><br></div><div>&gt;&gt; code here &lt;&lt;</div><div><br></div><div=
>uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);<br=
></div><div><br></div><div>string devicename =3D usrp-&gt;get_device()-&gt;=
get_tree()-&gt;access&lt;string&gt;(&quot;/mboards/0/name&quot;).get();<br>=
double maxrate =3D usrp-&gt;get_device()-&gt;get_tree()-&gt;access&lt;doubl=
e&gt;(&quot;/mboards/0/link_max_rate&quot;).get();<br>if((devicename =3D=3D=
 &quot;B200&quot; or devicename =3D=3D &quot;B200mini&quot;) and maxrate &l=
t; 500000000)<br>{</div><div><br></div><div>}</div><div><div><br></div><div=
>&gt;&gt; code end &lt;&lt;</div></div><div><br></div><div>Thank you.</div>=
<div><br></div></div></div>

--0000000000004e127d05b577b113--


--===============6740359587137562651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6740359587137562651==--

