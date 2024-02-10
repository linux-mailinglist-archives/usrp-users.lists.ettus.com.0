Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC23485062A
	for <lists+usrp-users@lfdr.de>; Sat, 10 Feb 2024 20:46:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97B5C380B29
	for <lists+usrp-users@lfdr.de>; Sat, 10 Feb 2024 14:46:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707594373; bh=TeJxiASeKVAT7HkbksvloQFxz18OhypFLRjv9VVfC64=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZOuRfUe3qQOMBe01VcHZdDbK9G6PBOfqM0CJq3rQaiD21v+Hqd8iVZFVB77gdLdso
	 0WR7kwKCPFHGymFIpqVfE8vjK/uAZB6yVaeGKmO3TwhRqjtXYDdwef4z2MHrlauF3a
	 zyADZQS7LbcEYiDZp90WP2f2Gz864TiW8WDwfVA9dfu7c6wF/dk84WgkNuevhvUcFb
	 BIWOWFf4nGwAZnE8QXrYswc1IxzfOsoFARFpE1avM9I0od8n52yKTD0nsifhrj0Dt8
	 0y0FjkeLqqllWAuF5oNWoH41VBI8wrVBtWwv5qFBP4KMXdRDWbt9ydc+FUC1E9off4
	 zLuTAz+z0jjIQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 256F4380A7F
	for <usrp-users@lists.ettus.com>; Sat, 10 Feb 2024 14:45:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f4tn8tdH";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-561519f8698so1603501a12.0
        for <usrp-users@lists.ettus.com>; Sat, 10 Feb 2024 11:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707594358; x=1708199158; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V4wo325IErF6K9myGI0YIQUPPHfgmZiAtZVQxi3+MD4=;
        b=f4tn8tdHlSVf1+Lc95BbcWIxEifqrS1lGf7WvI/PL3hK/eDae/Rblbx/BI+ss7DSPs
         MObimOA8wE06+kUNhkbf7FHgaELTtWmGXVKyWfATYUhkvo6LuGg/Kxd3fnq7Xty0JQnz
         zwNpVfhfxnhuTv7tOy3xMT1/E4bmvG1mmzHRsXlwm4UuzRAo61zkumaatrFGNGTd2U3i
         BNUkArrvYPSSeWKuLdfQ/dEELEgOcTI4EeWWrL8vqnco8cDveC5dmcg4LYpQmWk+cSLT
         5XGhfPEfeqFICH7LzPg/h5mn6OcwBg5iJ4heeyDU6IWy4ko9kntKP9m9z6noAYJCdzOG
         0q0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707594358; x=1708199158;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V4wo325IErF6K9myGI0YIQUPPHfgmZiAtZVQxi3+MD4=;
        b=e/Lp/3JKr/JDEV4eY6STX6YVIxoAPiRBhrpBjDNKc85n1Qm+/LlGy6Nx7pYdJHoWEL
         4jbVOGDxNeoaoT6ShOO9qXV795hKQQgWtg22u//3FwE3qH1G0gb6eIEwSSBkvEZE4Quh
         D9B2t9vUHis1sG0yt3RUpFmKtENW9Hc+z8TTLg60vE17bNAD6aFoziiJroeT478tPy+f
         h10swCpZNjZ6doV6J1AYQYSnmHVwOrsJCW+c9+jysM0HfgJDI4EpFjVUkH/WnlkotZrT
         FuKWLLPCQyleLMZzv6OHpYWcwPnhww02yImnsoAA+v/BUfXrFup09uBWF+qCPCp4l9Mn
         7rBA==
X-Gm-Message-State: AOJu0YycLmuloDafM+XqtnepEIi+DeNHcPJ8yszZmoQW+dAB0mCBhQpi
	uJsI22yadCBnTqd8K5cxqsr39EQXCjWGM6mPJjp50Co/k6zKJB0mb84U8O53XgRPqot6Z8OQkjE
	1KnikND/zjVqWCKQfRYqkKR1lfhoOhBNhsa4=
X-Google-Smtp-Source: AGHT+IGaYS03hx4hEgbNxeutAwy1eDuXby/FU8tgWncvRpGFKHcTji+heO/7I6od9pu8pT6k34/inp28sPnZ+Z9WJFM=
X-Received: by 2002:aa7:d4cf:0:b0:55a:70be:5e30 with SMTP id
 t15-20020aa7d4cf000000b0055a70be5e30mr1604294edr.41.1707594357473; Sat, 10
 Feb 2024 11:45:57 -0800 (PST)
MIME-Version: 1.0
From: Chris <gaytanc4@gmail.com>
Date: Sat, 10 Feb 2024 11:45:45 -0800
Message-ID: <CAEMZVF1F6HOVdSDfwBHX0byNdt1MqRZXnyem_zZAJDMNWRE-Rg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FZYNEWJQYBKFJWC5LASSD5LOL6J765KU
X-Message-ID-Hash: FZYNEWJQYBKFJWC5LASSD5LOL6J765KU
X-MailFrom: gaytanc4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC Tutorial
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FZYNEWJQYBKFJWC5LASSD5LOL6J765KU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7006374168929252349=="

--===============7006374168929252349==
Content-Type: multipart/alternative; boundary="0000000000001903ff06110c4b69"

--0000000000001903ff06110c4b69
Content-Type: text/plain; charset="UTF-8"

All, I am trying to offload some of my processing power onto my X310's
FPGA. I have the environment set up but still find myself confused on how
to build the out of tree block. I was able to add a block and I'm not sure
what to do next?


My design process is as follows: Matlab, get HDL code for DSP algorithms,
and deploy it on the RFNOC?

My goal is to start out with implementing an adaptive filter on the FPGA.
When I looked in the FIR filter .v example I wasn't able to match how this
code works with the rfnoc environment. When I add my new oot block I have
the verilog code similar to the gain block example but not sure what else
needs to be changed besides dropping in the verilog code into the
newly_added_oot_block.v

Is there any more documentation I can follow to make sure I am following
the right path?

Any pointers would be appreciated!

Best regards

--0000000000001903ff06110c4b69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">All, I am trying to offload some of my processing power o=
nto my X310&#39;s FPGA. I have the environment set up but still find myself=
 confused on how to build the out of tree block. I was able to add a block =
and I&#39;m not sure what to do next?<div dir=3D"auto"><br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">My design process is as follows: Matl=
ab, get HDL code for DSP algorithms, and deploy it on the RFNOC?</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">My goal is to start out with imple=
menting an adaptive filter on the FPGA. When I looked in the FIR filter .v =
example I wasn&#39;t able to match how this code works with the rfnoc envir=
onment. When I add my new oot block I have the verilog code similar to the =
gain block example but not sure what else needs to be changed besides dropp=
ing in the verilog code into the newly_added_oot_block.v=C2=A0</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Is there any more documentation I ca=
n follow to make sure I am following the right path?</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Any pointers would be appreciated!</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Best regards</div></div>

--0000000000001903ff06110c4b69--

--===============7006374168929252349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7006374168929252349==--
