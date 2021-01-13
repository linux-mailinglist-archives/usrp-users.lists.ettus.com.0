Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A06252F50EC
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 18:21:10 +0100 (CET)
Received: from [::1] (port=52240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzjpU-0000I1-Ot; Wed, 13 Jan 2021 12:21:08 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:45269)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kzjpR-0000B6-64
 for USRP-users@lists.ettus.com; Wed, 13 Jan 2021 12:21:05 -0500
Received: by mail-qk1-f182.google.com with SMTP id b64so2737133qkc.12
 for <USRP-users@lists.ettus.com>; Wed, 13 Jan 2021 09:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=6KXFP4eBL2QrgVSm3win9Xzg1oeGD1paaMZXk4dGjgU=;
 b=UPNXCZR/Epm11RF0oaMklvunJ4T5fo2e4d2jw5adWOgleCI+4zywXT7gBhXLveUYOH
 2pLuWB3TXMQtpoh1oxvtEdBXk9W35pyrvYGPSRDUPfSJac6cWVrXpa86rByYaOp28JGK
 T+eI2Rqsujakobjs6bNtcm3zh8OvONX+dJ/jXvdTx81Tn3LTFhZWVNrHh3Ahf18lu9hL
 1G0/gvxFCV+/iEvTbIJF7mC4QKJvwsJA4gN4WgG9pbqJ5a3j8sBOtkLWi2fEfC1ojyEr
 pFfQEvybXyZck/70fsRo7hHRTaeh7O0SQ94M9gZsdCCzajO48h6xrZNTR9w46uXO/S1S
 8Icg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=6KXFP4eBL2QrgVSm3win9Xzg1oeGD1paaMZXk4dGjgU=;
 b=NbEx61oXgBYLukXi0muTSI5BU0UR2htqXj1+h6iIni5nE6D5MQ3jLtYL+MR2j2m6Jh
 XvD9N+uwFcXIxwAflGm2w4IbR2I95c0Y/pBZOaybkP6+TAuXCK72HdiMj84zlhnWONhQ
 nyHDfmAY2dDJg7Rh5ExarEf4MA0/5i773XUxt6YddGSj2LtfBgm1RT7OqyPhGigr0Uf4
 zV3W4K378cQpRGGnlu6QwBYk8f2BI21ZWzXEPft0R60Ci90JlW6z6Esn/bciVxN3Vici
 dPwSTHSWrxiWyv3RKRAryIqORAskzZTtq0Ys4KLF2lr6k6nbfJtb00SsYoqtl8JB49eY
 ro9w==
X-Gm-Message-State: AOAM531tmHiV9BMGrn00KieOwbm/oxTYaMA+/qATMIatqgAeVGwzaYis
 KyuCBRKhCwaudGX67C17g58=
X-Google-Smtp-Source: ABdhPJxRmpJEj1rJfIoD/X5sRv6CnrKNGwLe96R/G4lZ7InGckk1vRr8t9u2DxGzi7QlX4U4wRnmZw==
X-Received: by 2002:a37:4d8e:: with SMTP id a136mr2917949qkb.317.1610558424560; 
 Wed, 13 Jan 2021 09:20:24 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id b12sm1308404qtt.74.2021.01.13.09.20.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Jan 2021 09:20:24 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 13 Jan 2021 12:20:23 -0500
Message-Id: <536D41AB-C41E-40C1-B87C-45E66F6246AE@gmail.com>
References: <CANwgjNoJ_DbMRLQqPu7aF2ETi4Ym2pbn9wFo4iRtyt7mH_8Uug@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CANwgjNoJ_DbMRLQqPu7aF2ETi4Ym2pbn9wFo4iRtyt7mH_8Uug@mail.gmail.com>
To: Ephraim Moges <emoges@uncc.edu>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] Changing the transmitted samples per packet
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
Content-Type: multipart/mixed; boundary="===============6953668457487509317=="
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


--===============6953668457487509317==
Content-Type: multipart/alternative; boundary=Apple-Mail-ED1FBD0E-6694-4F91-939B-D6D6870A1B4B
Content-Transfer-Encoding: 7bit


--Apple-Mail-ED1FBD0E-6694-4F91-939B-D6D6870A1B4B
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

https://files.ettus.com/manual/structuhd_1_1stream__args__t.html


Sent from my iPhone

> On Jan 13, 2021, at 11:51 AM, Ephraim Moges via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> =EF=BB=BF
> Good morning,
>=20
> Is their a simple command like tx_streamer.get_max_num_samps that sets the=
 maximum number samples per packet?
>=20
> Thank you,
>=20
> Moges
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-ED1FBD0E-6694-4F91-939B-D6D6870A1B4B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><a href=3D"https://files.ettus.com/manual/s=
tructuhd_1_1stream__args__t.html">https://files.ettus.com/manual/structuhd_1=
_1stream__args__t.html</a><div><br><br><div dir=3D"ltr">Sent from my iPhone<=
/div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jan 13, 2021, at 11:5=
1 AM, Ephraim Moges via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"auto">Good morning,<div dir=3D"auto"><br></div><div dir=3D"au=
to">Is their a simple command like tx_streamer.get_max_num_samps that sets t=
he maximum number samples per packet?<br><br><div data-smartmail=3D"gmail_si=
gnature" dir=3D"auto">Thank you,<br><br>Moges</div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-ED1FBD0E-6694-4F91-939B-D6D6870A1B4B--


--===============6953668457487509317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6953668457487509317==--

