Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8DB5525E3
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 22:38:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B71F383C10
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 16:38:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655757501; bh=vkirG/Lai90IdlWTd8aJswH/Kx3F734oNRXlLPf19po=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KGjW+s14YrJMJTkDNj6B9SlfE3k3ETZtjtlmS5p+MWr9XPqS9GMBOc+ke2D6gwS3l
	 Z50X5GvsqkEon9wDw0TDbCdI92C9kc7eTukDYmaS1WeBz3nyMkfWOkSal/OTxsz2UX
	 GP4bFgUP1XzGxyqFJWeILdcEJOUSiArT6u7eNwfh9vWoRCZBxrawQo9LwCJC6CUKMQ
	 IIVygAt04RRKL72tcbxTmL9LAZ0bqe5NLAyaJpSd78hPBbUDoJFX0WavN28P4YYLp/
	 4C+n6n9m5CNbWQM9M21QWIId3ciY60ugx8Lxfm1gSB2U7GcRr7EN4dIULJR9zvDJct
	 x+2k8YyEkca8Q==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F147383B35
	for <USRP-users@lists.ettus.com>; Mon, 20 Jun 2022 16:37:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QETNLlrV";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id y14so12246680qvs.10
        for <USRP-users@lists.ettus.com>; Mon, 20 Jun 2022 13:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Vcs+8EN2qcCDi6t933vcIYl8nFyfLlfn2HjSHhpggGM=;
        b=QETNLlrVbHRQVbmns3xlZ8BpZbT/GbU1oK66rhBatlec/ibCtxOYpTEn+Se037moGh
         6fC2I4+sBN2eXFPbCQlm8OrQTnEvofh9VygLN4PwEZLV58njGXLCygsNsnRIzy2VuyTI
         BwmhwCsg+YPe2r3D6D7dPYv1VycEwRx+oszCjgLN5Tw7mVlbcb3OW2qyxL5tnIENmxVf
         M9eQ9p3wHvNqO/xxVA/E7zqe5Y/0ORs4/hIev4+prhp5BOPCrLSY4kH+IZ3Kh0aMkz6c
         u8lZTku2MHny0IQJqmalbfXMZ729FjJReU/hGGzYoUESbsYDX3LyMryoeMSnLMI6Stq1
         Jrgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Vcs+8EN2qcCDi6t933vcIYl8nFyfLlfn2HjSHhpggGM=;
        b=bnISZ2e3Ayy/V18L7V8IDtA8eTq5wazAG7wC1UJ+M8HiWaHPQ4urAnykvrZlmYZmBn
         Y4pQPDGqHJ55P71QYfILyRKYPBe9Fxc+KNjWVIFFrDYe3nO1eZn6y2OgNVkVnhnY309Z
         eWec2/ENAKdLFIvNRFNI9s8/bGCWEWtmUjd3KN61n5V8zcHb+Q+mjc4ul4WZNIRbE68K
         pYtUznemmnXqx1NMeVJ6VPKAxu7N87VNg1shVXGS2eP5Ej4A6kUvJklmOzxFhRs1MjQe
         e9dOKIP+hReAwkt476YOhi1vsb4JNPbgsMDcS06PSiJIQp+rBsdjrZxUrdjYYQBhWfem
         KEYg==
X-Gm-Message-State: AJIora9HJEPTPAgewp5nNL3gZvP2hR/t+ZGXB1hQWgl1T33jOjsD0C0K
	YgeJXU7/DtQ0bvezdicAO9c=
X-Google-Smtp-Source: AGRyM1sPVWkFJN6Eda2yEjrXEv///VLpq5KeioPvzrmQ8ooPUCGL/q65EzEAhBvb5SJQgg/5IamMzw==
X-Received: by 2002:a05:6214:c6c:b0:46b:ab18:bb1a with SMTP id t12-20020a0562140c6c00b0046bab18bb1amr20295049qvj.120.1655757441486;
        Mon, 20 Jun 2022 13:37:21 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id q22-20020a05620a0d9600b006a75fb69697sm10012098qkl.72.2022.06.20.13.37.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 13:37:20 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 20 Jun 2022 16:37:19 -0400
Message-Id: <15A05459-116A-4297-98E0-0E95D6DF3FAF@gmail.com>
References: <9FA630C9-DCBE-409E-9E54-AF3AC8D7B9BD@gmail.com>
In-Reply-To: <9FA630C9-DCBE-409E-9E54-AF3AC8D7B9BD@gmail.com>
To: Larry Dodd <101science@gmail.com>
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: ECK6HIGL4ZUHW2EI2BCRS4HH5TDKFKQ6
X-Message-ID-Hash: ECK6HIGL4ZUHW2EI2BCRS4HH5TDKFKQ6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: BasicRF Daughter Card
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ECK6HIGL4ZUHW2EI2BCRS4HH5TDKFKQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7953045658526517837=="


--===============7953045658526517837==
Content-Type: multipart/alternative; boundary=Apple-Mail-736D5492-2CD0-48F5-B1B3-E960E2B9115A
Content-Transfer-Encoding: 7bit


--Apple-Mail-736D5492-2CD0-48F5-B1B3-E960E2B9115A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes.=20

Sent from my iPhone

> On Jun 20, 2022, at 3:24 PM, Larry Dodd <101science@gmail.com> wrote:
>=20
> =EF=BB=BFCan a BasicRF daughter card be used with an Ettus N210?
> Thanks,
> Larry K4LED=20
>=20
> _______________________
> Click for K4LED Reference Links:
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-736D5492-2CD0-48F5-B1B3-E960E2B9115A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes.&nbsp;<br><br><div dir=3D"ltr">Sent fro=
m my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 20, 2=
022, at 3:24 PM, Larry Dodd &lt;101science@gmail.com&gt; wrote:<br><br></blo=
ckquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta http=
-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">Can a BasicRF=
 daughter card be used with an Ettus N210?<div>Thanks,</div><div>Larry K4LED=
&nbsp;<br><br><div dir=3D"ltr"><div><span style=3D"background-color: rgba(25=
5, 255, 255, 0);">_______________________</span></div><div><a href=3D"https:=
//101science.com/Reference%20Links.pdf" style=3D"caret-color: rgb(0, 0, 0); b=
ackground-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">Click for K=
4LED Reference Links:</font></a></div></div></div><span>____________________=
___________________________</span><br><span>USRP-users mailing list -- usrp-=
users@lists.ettus.com</span><br><span>To unsubscribe send an email to usrp-u=
sers-leave@lists.ettus.com</span><br></div></blockquote></body></html>=

--Apple-Mail-736D5492-2CD0-48F5-B1B3-E960E2B9115A--

--===============7953045658526517837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7953045658526517837==--
