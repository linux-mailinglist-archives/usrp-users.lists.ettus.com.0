Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 818A35B7C54
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 22:54:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93081383E57
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 16:54:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663102472; bh=59RwKsJylvU30Xm3mZTYYT1NI8OUFzsqF5pGdCEOPm4=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KKva9E50uOw+k+EGs7+7TdGVMZcQUHnS3btDJ14Yx3QIqbCqv2SZOwo8Sb3Ieppw7
	 mo5vYYkKkSRL+vCaqYs3LroU7aaEDRlM85BEYin5PSafp7+SAUcFPo4mYWaNJYSE5S
	 XkNWYyXmExe8Nj9ctBOcbttT1M0vtk7EeTi2cBRYRYvtSxJHsO2qy1eYseapueodRY
	 qiGuI7Xg0RAqQg12pE/mAVtNgkG0VxJT/VIuNiBINmV4Ck1jmFJ9n0RWnfHlMGuDYd
	 yRZDdO9Un2Pu/efldC0Vd3aFEiFqEMjdvOgXeTWHh1/mjDH2vVlRyxBfbQey5n7sRB
	 Vi7LdSLgZDZQw==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id A1148383E4B
	for <USRP-users@lists.ettus.com>; Tue, 13 Sep 2022 16:53:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kYLEbI5X";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id c11so9737640qtw.8
        for <USRP-users@lists.ettus.com>; Tue, 13 Sep 2022 13:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date;
        bh=dFsgI39TzI0jPv6N3b5w0OWTdGafnBQOpmgOELCndos=;
        b=kYLEbI5X3RkrkKhNlYqxhc60SsL5ZZ+wco7oIq4bGWuF9009duOu2rTaDbI8fzBG0b
         4Susoe5tvOso0jzUz2QjkYIsxHokXt+MWFQOUK2RNw1L+woY56qzpYPBpBXr3sNLFo/v
         Qcl0NRxpHJ04m+70p1wz5eVtMHYQHzR6EsKdTGvsOdKO0oW6Sa6y28VFfkDIhqv4bM8R
         4pvL1B6///lZN9cAluOLFW2ERivfWUGd8vujtIIi/VqdJyVW8YAdsmxDhtupnpllkWnd
         aTdokT5pOBl9hVKWy/nC31CvDAD/SzPI0Vhjr1TMzEd5D/9W0fIhL3RXF6oVxmRUIY0+
         pfWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date;
        bh=dFsgI39TzI0jPv6N3b5w0OWTdGafnBQOpmgOELCndos=;
        b=jMiNp9sD4Pz6Hdd6AHUs7/4fIoD6sS0gAsHDmhHJWayp5MY/0s1WSe4ANQ7jHcThQK
         +aQymb7e5ij9C7Y9kiUdIMF1SKuNVaLNqkqRgHl4Wa+XPTz9Tk5WbvK0Imv6CRNVOhwz
         kXccnpra8In9OMt2ytAvSfiCPm5xsQutk6B7KHMsda3BoapDQ8BHuo3cMs0G0jmX86BT
         JzzCEC2DxlTdx/j9ulJDmmn2s5rrDLk6dPIStS+VtvC6rOp/L/MlhFSbekZX/VhJYB56
         xlCMrYtso4MfkzFzpazFSsXMsoTx4ZFc+ay9CAUrSlnvstFhKdfr1QrSawFsWQgNRHNL
         j1gQ==
X-Gm-Message-State: ACgBeo2+W85vSe4lb6T7W2AZD7Of0SEd8APkS6beTzAp9HhfVEFD9FWY
	7gROM8dkFdi8Sy7aFLZoqrQpxFrhTgM=
X-Google-Smtp-Source: AA6agR690fhOjGptV/W1ObXxm6+oS5wxTGwljC0Vgoa3nE/lr6RYP23IVMkO02eKapI1YnrndjYhEA==
X-Received: by 2002:a05:622a:1c5:b0:343:6cfb:32b with SMTP id t5-20020a05622a01c500b003436cfb032bmr29769886qtw.31.1663102404145;
        Tue, 13 Sep 2022 13:53:24 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.gmail.com with ESMTPSA id h1-20020a05620a244100b006cbcdc6efedsm318836qkn.41.2022.09.13.13.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 13:53:23 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 13 Sep 2022 16:53:22 -0400
Message-Id: <A187EFAB-CCF3-4AB7-BD45-1356FF57002B@gmail.com>
References: <SN4PR0501MB3919B694DACDED2A6BAE0C61D9479@SN4PR0501MB3919.namprd05.prod.outlook.com>
In-Reply-To: <SN4PR0501MB3919B694DACDED2A6BAE0C61D9479@SN4PR0501MB3919.namprd05.prod.outlook.com>
To: "Avila, Jose A" <jaavila5@miners.utep.edu>
X-Mailer: iPhone Mail (19G82)
Message-ID-Hash: EDMQ7YCBGFTMDX5UOM4RMZDNSYI63I5E
X-Message-ID-Hash: EDMQ7YCBGFTMDX5UOM4RMZDNSYI63I5E
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Companion issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EDMQ7YCBGFTMDX5UOM4RMZDNSYI63I5E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7397226965735977678=="


--===============7397226965735977678==
Content-Type: multipart/alternative; boundary=Apple-Mail-71970410-2560-4D96-8853-9E734BE1045F
Content-Transfer-Encoding: 7bit


--Apple-Mail-71970410-2560-4D96-8853-9E734BE1045F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This would be a question for the discuss-GnuRadio mailing list.=20

Sent from my iPhone

> On Sep 13, 2022, at 4:46 PM, Avila, Jose A <jaavila5@miners.utep.edu> wrot=
e:
>=20
> =EF=BB=BF
> Im trying to downgrade from gnuradio 3.9 to 3.8 both from source. I instal=
led 3.8 and deleted as much as I found of 3.9. When I check gnuradio-config-=
info --version it shows the right 3.8 version. However when I run gnuradio-c=
ompanion it tries to grab version 3.9 and errors out trying to find libgnura=
dio-runtime.so.3.9
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-71970410-2560-4D96-8853-9E734BE1045F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This would be a question for the discuss-Gn=
uRadio mailing list.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div>=
<div dir=3D"ltr"><br><blockquote type=3D"cite">On Sep 13, 2022, at 4:46 PM, A=
vila, Jose A &lt;jaavila5@miners.utep.edu&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=



<div dir=3D"ltr">
<div></div>
<div style=3D"">
<div>Im trying to downgrade from gnuradio 3.9 to 3.8 both from source. I ins=
talled 3.8 and deleted as much as I found of 3.9. When I check gnuradio-conf=
ig-info --version it shows the right 3.8 version. However when I run gnuradi=
o-companion it tries to grab
 version 3.9 and errors out trying to find libgnuradio-runtime.so.3.9<span><=
/span></div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
<div style=3D"direction:ltr" dir=3D"ltr"><br>
</div>
</div>
</div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-71970410-2560-4D96-8853-9E734BE1045F--

--===============7397226965735977678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7397226965735977678==--
