Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC94CFA182
	for <lists+usrp-users@lfdr.de>; Tue, 06 Jan 2026 19:24:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7337838679A
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jan 2026 13:23:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1767723839; bh=YcLoN6dbs84JJ2VJZLorAqh/igJcs+xYzW84nNkY4cw=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Mcma72XL/V+f9/5nKH2vSEtl0SHcUdJ8u7YuHioheDkXcpwq+dX8u2a2+8tDNXjGT
	 m59gFqFm+B8vADeJeyn5YaDVZvmVAi8kAWzbtcugcFsbQB470n/BKyJ2qrmlUxXiXk
	 6c05QdcebeHjufE3AYg9G6qcd38BDLHJiZdUANbghwYuHdOTcpyxD4n8a5lRl4UDq0
	 Ph54v9CPYktXezRWJ1cAWplOecmFhSuYUPDimEMtmdV1X4Nep0DgHbIojxhGq123Qn
	 eP/yRLIq0KwCAOVwn9aXa/57RKDwvm17QqZzoJXmlYR5jFlv4zIfhw1qgQvH2rW1mJ
	 kRGptZ7SEw4Ug==
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 0CD103867C5
	for <usrp-users@lists.ettus.com>; Tue,  6 Jan 2026 13:22:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="cTkyPDgM";
	dkim-atps=neutral
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-78f99901ed5so14140807b3.3
        for <usrp-users@lists.ettus.com>; Tue, 06 Jan 2026 10:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1767723729; x=1768328529; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=afzHZAS0qUVLtM59lJEGgvVEROm13FR0fGpLfeO3RcY=;
        b=cTkyPDgMZb4hLgGXLgzcuI/ULPb99P2b8XBFFF3tmFFvfLWOG+LgZKMi3cmldVUp1w
         uYqJkgo2H1CAPH/YirqMBvfKeZmVQvHiDhOWF5NWQftYIc2iSoeDNy35fYP0LZ86QQzC
         wO2gwWEM/LdwTuGno69BNKES/w86W0Z45+/5KbMBVP+ynYuJdhP3YatSG0G+87+81q+p
         a8YwaOQoLz9mXiN1tJZX4p7iQtMCmtGTm4pNA0p9fedAD2Ln58eUCK1NYOQ+lrRexZZT
         f1xfmb1/hkiWeYNBAOnd3CmsxzGkW/4tB5hsTTObwGxjBjI/m0MeV448sT+ipp/3pm/u
         jKew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767723729; x=1768328529;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=afzHZAS0qUVLtM59lJEGgvVEROm13FR0fGpLfeO3RcY=;
        b=ufGqj/eUq4uk6V6Lz7NUsDi8H8U1IADqQPTjHQb4zfL5fuiLq020oamaXwt214uS7H
         Y+XqOZIGRiAHVo40WXpKSj9VetCXG8tQ+nouvaP5MQ9FLjGT7zeIcxYLmu6vMtOc4ADC
         CRIr/s2foaElUh9F2HBX1PXBsAdUCOAz+cCIlVm2DUqEyCjrjBivy+K4tlOeO/tGQvez
         fFRyDz4BWt5DuUPKlVCdLtv3lZkZ112hLEA5g3Qe+ksB18XuF3DroSXfg/MmB0uY8sYd
         9zfRJqliP3ifYILZ3PRK3hlzh2AccL2Mdp12yuvB3+qP155zs5gx976Il//MFM+lKy8m
         RtIQ==
X-Gm-Message-State: AOJu0YxUgaLcorWHm987nfRmEDccASej2pSTHC8KQzRFjcd2GnBgk7aP
	NQ2QUJYVuo40th4xDv1AgFyIE8FKvMpZ+FruMHuCGDqUfo+EYSRSV/cdUwONDD4b209D9hBXsgH
	+L8qlgDwCVTX1wxrAO5omNuxJVhB3UGk+G0bkE2ct34JoBzmmeow=
X-Gm-Gg: AY/fxX5p6ClG4qFxfoaJezuZBvnebcUutO9rRTcI46+lkEINW5FlB6svInvV3ZGVba5
	zzYDa3elhksc0Tgdhi+BS8xRrMrx2H0e7biVrqHOzEcVoVM4lNXQQJZ7fCpb/0NfodeRF0Y91PC
	o/n3IYazbE3yN4x0vvbv7UmrQ9kauSoTNEVjiziKPWZ59jlglOnoR+zJrz+vMAn/Gj3Gm28iprY
	doLXBib33E2fmI5teWiKOUsXhK4bmheaiDsgaMdYLh1I9M2GYC+ANIacnJVyQArultv6t5BOnhR
	u//rtqx7Q16ZqO1WXi0ZQu0q4BbB1Q==
X-Google-Smtp-Source: AGHT+IEOTQEYEwYcoo+xTD2Adc57iZokBG+bw3q5s64IX70UKIj3jx6Avxn2nksehZoIymIEJYrozXrUrNtCFVCr19w=
X-Received: by 2002:a05:690e:424d:b0:641:f5bc:696f with SMTP id
 956f58d0204a3-6470c918aafmr2387358d50.75.1767723729250; Tue, 06 Jan 2026
 10:22:09 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTR6tpMLh6P+zb0nog2hOL8_ksJDUb0vPJOGr0SgLOcG=w@mail.gmail.com>
In-Reply-To: <CAB__hTR6tpMLh6P+zb0nog2hOL8_ksJDUb0vPJOGr0SgLOcG=w@mail.gmail.com>
Date: Tue, 6 Jan 2026 12:21:58 -0600
X-Gm-Features: AQt7F2onD_rwCgbkpBhtgxGhSp7EC0MBTeia0-2zV9HsVBsIyHIazN9J4A3e_bg
Message-ID: <CAB__hTSE_GpkrXsh0KvGw7BjmcduM=gNJmxBD3FivxUhLMyeHA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: KCEURJNEHS22JV4ZXKFM6SNP3GI3LWT7
X-Message-ID-Hash: KCEURJNEHS22JV4ZXKFM6SNP3GI3LWT7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using extension interface with RFNoC API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KCEURJNEHS22JV4ZXKFM6SNP3GI3LWT7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4366909828260334492=="

--===============4366909828260334492==
Content-Type: multipart/alternative; boundary="000000000000f18ed80647bc409d"

--000000000000f18ed80647bc409d
Content-Type: text/plain; charset="UTF-8"

Hi,
When using the multi_usrp API, it is relatively clear how to use the
extensions interface. However, for an arbitrary RFNoC graph using the RFNoC
API, it does not seem possible (without some cheating).  Specifically, the
function "get_extension_factory", which is needed to get an extension is
not a public function.  This function is called internally from
multi_usrp_rfnoc, which is possible because this class uses include files
from <uhdlib/...>.  Is there a reason that extensions shouldn't be used
without the multi_usrp API?  Or, perhaps I am doing something wrong?
Rob

--000000000000f18ed80647bc409d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr"><div>Hi,</div><div>When using the multi_usrp API, it is relatively=
 clear how to use the extensions interface. However, for an arbitrary RFNoC=
 graph using the RFNoC API, it does not seem possible (without some cheatin=
g).=C2=A0 Specifically, the function &quot;get_extension_factory&quot;, whi=
ch is needed to get an extension is not a public function.=C2=A0 This funct=
ion is called internally from multi_usrp_rfnoc, which is possible because t=
his class uses include files from &lt;uhdlib/...&gt;.=C2=A0 Is there a reas=
on that extensions shouldn&#39;t be used without the multi_usrp API?=C2=A0 =
Or, perhaps I am doing something wrong?</div><div>Rob</div><div><br></div><=
/div>
</div></div>

--000000000000f18ed80647bc409d--

--===============4366909828260334492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4366909828260334492==--
