Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99317389939
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 00:22:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78DCF38669E
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 18:22:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U/jZ8+ch";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id EAE753859EC
	for <USRP-users@lists.ettus.com>; Wed, 19 May 2021 18:21:37 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id a2so14351113qkh.11
        for <USRP-users@lists.ettus.com>; Wed, 19 May 2021 15:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=17OT2vAGH1z/ei3s2Rs3h78GOCqZHC9/PddN0DvZy94=;
        b=U/jZ8+chyhGMxfaJ8D+zOm+kJ1vDT+rQVlIH/6C9NdN+neczJQ9/e63KfT5TnqPu7Z
         H9Ot+wo0kb0vPT2++T91kG50xHB93+MEZrf1g2ReTOkjt6EC6mLCtlIWZ/qEAjXzU+Yd
         Ud7A+n8ihNfrhcS+AAYe7iS1AO6sdeYYyZ33hL9iWVakHb3BTQTOtCwgXzAjn/7PPRxJ
         3GZEW8c4ayIrioxsT67JyPKtfHXej2h0J1kzG/gaBZ+7KhDdOM3UbkQwQx5G73fWONPY
         SBK5jSKSw7t7tZeuWhYyKjlYrm2PUoWojaMdaODMVGFLkqrHx3ogi6TwXmpuajTk7cbM
         oQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=17OT2vAGH1z/ei3s2Rs3h78GOCqZHC9/PddN0DvZy94=;
        b=hDwFtw/W2GLwLXsODUyuczgN585mJaMe/W9p7MQYOXiq+RrUPfA4BbPQKefR05PFCz
         LxJQE3al35IukSnn9XnYm8LtNd6dhIOVkYN8QMPJ887RdU5U0qMVXaSCMQmF2HzR6C6l
         5BDxvggBWmz9GCheOCruKdn/BCDoXmH7a4o5JX5vU0wpKI81rL+ZAFuo+FIsL7krHMCS
         6k7r4IkefaQ5BjDIiTOXUh5UhQZ44+wHdVJllmmtpH2Ua9BzBPWVBbYBe6Uw2k0a4RVt
         mn/0guecqrrMksztmV10wyReEfNKO3dZREO5OP7pNnpIlssuUinnDOrjgkILsw/XKYl8
         GL/w==
X-Gm-Message-State: AOAM531qcdDiPrRiR/vIqv0dc3HH77MKFZE2Lz0m50XIocUjhkUbb4OB
	chXQw+V83Q+TRo50rct3I8s=
X-Google-Smtp-Source: ABdhPJwYoLqX+fDKIH6OCJP3wmZg7ExOmTQCDExw2q1YUTsGAq3Tosbkb9Ufd0cjqaRy8K+4DrGMBw==
X-Received: by 2002:a05:620a:ed3:: with SMTP id x19mr1757156qkm.205.1621462897348;
        Wed, 19 May 2021 15:21:37 -0700 (PDT)
Received: from [192.168.2.132] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id u126sm806960qkd.80.2021.05.19.15.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 15:21:36 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 19 May 2021 18:21:36 -0400
Message-Id: <B1D2B960-C845-4A34-832F-8E355346BC93@gmail.com>
References: <J1xo1hVETUw2W5ARZhJ2wRhpLo97RWtOsRBOpY4Os@lists.ettus.com>
In-Reply-To: <J1xo1hVETUw2W5ARZhJ2wRhpLo97RWtOsRBOpY4Os@lists.ettus.com>
To: thebouleoffools@gmail.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: B4ZPLKZDEHEWP6WHIB2PVPWAWHFURBQH
X-Message-ID-Hash: B4ZPLKZDEHEWP6WHIB2PVPWAWHFURBQH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble running commands from host on E320 - Timed out getting recv buff
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B4ZPLKZDEHEWP6WHIB2PVPWAWHFURBQH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7398906896784073267=="


--===============7398906896784073267==
Content-Type: multipart/alternative; boundary=Apple-Mail-6FF2A94D-A730-4FBC-B2CA-82931F2AE796
Content-Transfer-Encoding: 7bit


--Apple-Mail-6FF2A94D-A730-4FBC-B2CA-82931F2AE796
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Not sure. I=E2=80=99m hampered by not having an E320 myself to test with.=20=


Sent from my iPhone

> On May 19, 2021, at 5:51 PM, thebouleoffools@gmail.com wrote:
>=20
> =EF=BB=BF
> Is there anything I can adjust to get some kind of streaming for debug pur=
poses? I tried adjusting the MTU, but I get a bunch of macb =E2=80=9Cnot who=
le frame pointed by descriptor=E2=80=9D errors if it=E2=80=99s decreased bel=
ow 1500.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-6FF2A94D-A730-4FBC-B2CA-82931F2AE796
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Not sure. I=E2=80=99m hampered by not havin=
g an E320 myself to test with.&nbsp;<br><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 19, 2021, at=
 5:51 PM, thebouleoffools@gmail.com wrote:<br><br></blockquote></div><blockq=
uote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Is there anything I can adju=
st to get some kind of streaming for debug purposes? I tried adjusting the M=
TU, but I get a bunch of macb =E2=80=9Cnot whole frame pointed by descriptor=
=E2=80=9D errors if it=E2=80=99s decreased below 1500.</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-6FF2A94D-A730-4FBC-B2CA-82931F2AE796--

--===============7398906896784073267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7398906896784073267==--
