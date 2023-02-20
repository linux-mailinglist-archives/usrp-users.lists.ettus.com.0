Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 551DC69C7D3
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 10:43:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A67EC380F6F
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 04:43:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676886220; bh=Cy1TKoPJnZXt9ltYEpTOqVVNeXqotPQL94p3P4HnuOk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CahqtMCos5idwR82hGAV0uXBjhJ3l0ZIBKUXHhxcuPCvqbBUSqW8uXOpRf7OrST1u
	 VR40uc+uuxLd58sRTN38G2oPX1WtqprJSGHSs2DUDn7ZOWclai9eLd4r0sJ0TpMxCY
	 5s/rRikiF4xbDzCv0+HzvCz93PZJEJEbAh80GgAvZHO+83DattSn70Sst8YerE/8K5
	 ebjT4tm7qJLpUWrPTo8KpyjeOanLuERP2DyDitBWIM1ZjzFut3zWc9654/mjesOV1w
	 QX0db8JsbMLqPz7e237wsse0JFsIWu75wdWZvNZdsqFf5TUZsFmoVO57Kndif3Uvpa
	 Bv+H/BkvTm3Mg==
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 79F4E380F6F
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 04:43:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.b="W7YQdFwN";
	dkim-atps=neutral
Received: by mail-pg1-f182.google.com with SMTP id k29so680138pgm.3
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 01:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rrhnRw7lmHrCqpHd6CVbpf9K00Vori4Ttv6FU/3UryA=;
        b=W7YQdFwN0+JVkwBZX5B5HXd/wb/aenhmtLQweZRIr/Mlsir4f1zbPqopgb8D8/AM+F
         WDqNxHoeDRXMiM8lNrPnhhfJLgTO9afXrC/UcXaID9HiBzAJEVP/yESHhy6N+nv9fb55
         TCuZDv0henJAJ0NEK8v6PFINRndUaZ6xliFrSO3M02CQav3DFo4zTK+G0ONBdzN2Eg1j
         w27fXo0fG4UBemYvI0wafBSyY2hCX2jf97Ijb4Tgcw2hd6Y7m8Fcf09u9Pd25HHQbiwr
         HGLjsBOO02CC+Qsg3jN9bDuEP4mLgURj+NXePKeHcz/hoUg4MuxIExxOVGzHdtV8sETh
         kGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rrhnRw7lmHrCqpHd6CVbpf9K00Vori4Ttv6FU/3UryA=;
        b=CjDIqlG3rCzwPlctsWarQbCoqT11ZfPRwm+t8kB6BsThu9PXvieBISlRjx67PjD03j
         TFQU7gj4WPhjAM6mbhhwknQMfNhBPDtH/SH2lO6iu5ay7Dyz/FGca/2AW5NAHR5v6E4E
         unyF90CkleN/ECHZxGUwiEFm3Q1qvJo4c1LX2wUDSU0nRJCnRAbUivZD7Oypj+kAnYos
         duxcrI5JxMMUutOKkkEOHKMBPUMXhc6+K+tkaR9fLx9oJ1KY6+vzhI4qWwWagMlBMihM
         4WhpM5/qhoSPhBpOnEtgCDHP958MjQavKYQkOJmMRFTZWmpUrJlnVv66NoR5WQU4lGNo
         6d0g==
X-Gm-Message-State: AO0yUKU03PNIu3lBD+kShtM3Xu4KX6tBqeW2HMZ41u8VDo3CZtMmtw7b
	hTW0QaW+xoRVxNY2RwmLXSEupgjNpTGXR1OkEas=
X-Google-Smtp-Source: AK7set+QO6taOrw/U28+ij6zRA10u9Ajincy4HwK+bdAj/AA23ETwdju4x7wCEgEyk953qOT28t2Tg==
X-Received: by 2002:a62:7957:0:b0:5a9:b4b4:6911 with SMTP id u84-20020a627957000000b005a9b4b46911mr3374469pfc.25.1676886211916;
        Mon, 20 Feb 2023 01:43:31 -0800 (PST)
Received: from [192.168.112.32] (nakaolab97.iii.u-tokyo.ac.jp. [133.11.240.97])
        by smtp.gmail.com with ESMTPSA id x15-20020aa7918f000000b005a8f1d76d46sm484678pfa.13.2023.02.20.01.43.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2023 01:43:31 -0800 (PST)
Date: Mon, 20 Feb 2023 18:43:23 +0900
From: ". AERMAN TUERXUN" <armantursun@g.ecc.u-tokyo.ac.jp>
To: usrp-users@lists.ettus.com
Message-ID: <cca4963b-dd1f-4f6d-aa42-0fc0da70fd75@Spark>
In-Reply-To: <dd99ce62-d89b-41a9-bdd1-8e0f85e76125@Spark>
References: <dd99ce62-d89b-41a9-bdd1-8e0f85e76125@Spark>
X-Readdle-Message-ID: cca4963b-dd1f-4f6d-aa42-0fc0da70fd75@Spark
MIME-Version: 1.0
Message-ID-Hash: JFIOSYHX2XXEJVYCBLBXVAVMQEWQY3EA
X-Message-ID-Hash: JFIOSYHX2XXEJVYCBLBXVAVMQEWQY3EA
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Use both RFNoC API and multi_usrp API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JFIOSYHX2XXEJVYCBLBXVAVMQEWQY3EA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4474790784070914299=="

--===============4474790784070914299==
Content-Type: multipart/alternative; boundary="63f340c1_5072367_3ba"

--63f340c1_5072367_3ba
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi USRP users,

I am developing a R=46NoC block.
And for some reasons, I need to use both R=46NoC API and multi=5Fusrp API=
 in the application.
But I am confused whether we can use these two APIs within one applicatio=
n.
=46or example, the application streams data to=C2=A0=C2=A0R=46NoC block=C2=
=A0=C2=A0for IQ processing and streams back to the host. Then it uses mul=
ti=5Fusrp API for R=46.

If it=E2=80=99s possible, I suppose we have to create both rfnoc graph an=
d usrp object for the same device and also different tx/rx streamer objec=
ts for different API.
Can anyone give me some advice=3F
Thank you in advance.

Arman

--63f340c1_5072367_3ba
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hi USRP users,<br />
<br />
I am developing a R=46NoC block.<br />
And for some reasons, I need to use both R=46NoC API and multi=5Fusrp API=
 in the application.<br />
But I am confused whether we can use these two APIs within one applicatio=
n.<br />
=46or example, the application streams data to&=23160;&=23160;R=46NoC blo=
ck&=23160;&=23160;for IQ processing and streams back to the host. Then it=
 uses multi=5Fusrp API for R=46.<br />
<br />
If it=E2=80=99s possible, I suppose we have to create both rfnoc graph an=
d usrp object for the same device and also different tx/rx streamer objec=
ts for different API.&=23160;<br />
Can anyone give me some advice=3F&=23160;<br />
Thank you in advance.<br />
<br />
Arman</div>
</div>
</body>
</html>

--63f340c1_5072367_3ba--

--===============4474790784070914299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4474790784070914299==--
