Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA9E1074A2
	for <lists+usrp-users@lfdr.de>; Fri, 22 Nov 2019 16:12:37 +0100 (CET)
Received: from [::1] (port=53520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYAbs-0001Fi-Fh; Fri, 22 Nov 2019 10:12:36 -0500
Received: from mail-qt1-f179.google.com ([209.85.160.179]:42908)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iYAbo-000138-Ur
 for usrp-users@lists.ettus.com; Fri, 22 Nov 2019 10:12:32 -0500
Received: by mail-qt1-f179.google.com with SMTP id t20so8136092qtn.9
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 07:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=YRa/2z5GYAL4OrFj3gTnkV5eCw2W0pwVLZ0mv6/ndgk=;
 b=t/6KzxxluWMSIFjLds16B1g48vmbsQkAFlarTe+X2RCVePGTxejwu44foiP7+aCfkY
 fbfJOwCb0xYavVm64O5AXsvOAQS3MscLC/7dDHmpv4uJSeAalxdzqCg5T0D0d9t9mnwd
 aO/PrKfy8by7clgGKdCAFgFSG4NniRQ/fNjrTyhHAzvpDFR3qAznRwhu4RN/payT1iDE
 KiVMXmBtpxCZvULHioKzVTFED4K/UY1Z2y3kNQpaytMYJtXB02+Q2AwmLub15eVqzmh5
 ve7zi0gC9FVnMQt7iyYUccAn5/IDg9uaiHHzHFzY/EIaD6kkADeOvrzqRr79LZOWoJ1P
 f56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=YRa/2z5GYAL4OrFj3gTnkV5eCw2W0pwVLZ0mv6/ndgk=;
 b=ltHZ0gBGENg9xJST1b/cZ8kaQOgM9t9KObhsv/hCdKXulxCvtRxWrdDwVXFpdI1TU/
 nlptTQIaJHA4riUig9/bXMa7BJljGVneCk2HvUXwWv2jMZqaBk8+1tx54Zt6In4Ue2Ro
 oVg2N9oala3lzGVeZu87rf5Pcj76JdJXzfJ1NpwpLuJRecndPPe6qU/12V1B+9UKXAg9
 BHDT8Ku15flFsD8ywmcnZnFaRsA2jh+3csVIAPMDaNP797X13WbBBE11YDqbZRY1zatG
 DykxmszSEn1iHmCyWCXTmeg7fgtcbPWNGgKt6Yz5pLD+Eb7KGzz1si36j6dBH70UnB5g
 QozA==
X-Gm-Message-State: APjAAAUo9MvjV0c8YLHSBJ5YHw2zNHBipUy/lGWz4OSkLF1UldFAVenq
 qA5zFVvg661RgL7hRWGLHgqJPu673K8=
X-Google-Smtp-Source: APXvYqyYsX54dPQ0upCpU/KA/BXvXtkWrhD08r2d36aPUivNG5MDk1Y2j2PBmct4a6n1V6XvnLENwQ==
X-Received: by 2002:ac8:1209:: with SMTP id x9mr14849037qti.352.1574435512273; 
 Fri, 22 Nov 2019 07:11:52 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id x8sm3522658qts.82.2019.11.22.07.11.51
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 07:11:51 -0800 (PST)
Message-ID: <5DD7FAB7.1090909@gmail.com>
Date: Fri, 22 Nov 2019 10:11:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAPAeKJEM8cObGkx9Qsef_+Z8+=HgJbS781svpnAGToFmLfEcRA@mail.gmail.com>
In-Reply-To: <CAPAeKJEM8cObGkx9Qsef_+Z8+=HgJbS781svpnAGToFmLfEcRA@mail.gmail.com>
Subject: Re: [USRP-users] Automatic Gain Control
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
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

On 11/22/2019 02:38 AM, Sergio Parre=F1o G=F3mez via USRP-users wrote:
> Hi all,
> We have a X310 SDR  with release version 3.14.1.1 of UHD. We are =

> obtaining IQ samples from 4 channels.
> My question is, X310 includes Automatic Gain Control in samples =

> depending on signal power? I say that because in the datasheet I =

> couldn't find any information about that but I observed differences in =

> power level depending on if SDR gives samples in int or in float format.
>
> Clarification: When SDR gives samples in int format and after I'm =

> interpreting that sample the signal power is different than if I =

> obtain samples in float format.
> Best regards
> Sergio
>
>
The float values will be scaled into  {-1.0,+1.0}.   The "wire" format =

will always be in 16-bit complex short ints, so the SDR itself has no way of
   knowing what host-side format you're using.

I don't think ANY of the daugter-cards that are normally used with X310 =

have hardware AGC of any kind, and the DSP engine in the X310 doesn't
   implement any AGC of any kind.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
