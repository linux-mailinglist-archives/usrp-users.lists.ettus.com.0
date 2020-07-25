Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9149322D612
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jul 2020 10:28:38 +0200 (CEST)
Received: from [::1] (port=52098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzFXo-0002Na-G4; Sat, 25 Jul 2020 04:28:36 -0400
Received: from mail-ed1-f42.google.com ([209.85.208.42]:40041)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jzFXk-0002Ey-KT
 for usrp-users@lists.ettus.com; Sat, 25 Jul 2020 04:28:32 -0400
Received: by mail-ed1-f42.google.com with SMTP id b13so6214606edz.7
 for <usrp-users@lists.ettus.com>; Sat, 25 Jul 2020 01:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=8W4r1robMiwykq5XZoeHyzKoozTEghkxbWr48y3ZXMU=;
 b=FSWC4d3cRvFtDKlAmG8CwN8HDPxOTcAa5gaL96soHvDisfic0NY8O8KoWMGcodwmYV
 f2cU3YrDWGRWAaRZdqBA0QIdKbQ2lMmL5H0Q76c0VApKCDu1YYAE1I2FJ6FrI0ooOoGI
 l8DX5irUNxeMxCnA7e5N8Ax7hR65yYh/wY8kPYHdrr3lqlKZ99OKvcgfsvvniDmxSuEZ
 lui4EpxCFSTLRJaspwDUpknCvokQRISi2XewIrvZT7u7zeY11v59qhpC3mfTBFnBMS7B
 mlpycRgaYVvtCGjQxBrUn7PCESgOINWsZunBhzX4g43Led42LSE8lgsK9wflbbybpRs+
 orMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=8W4r1robMiwykq5XZoeHyzKoozTEghkxbWr48y3ZXMU=;
 b=piuPvdUPTsmnSWoRGM7wDho12kWyWDA3R16FPRmUToUqYhQkPxSmB3IZFB6+hDiOVb
 0KBczJXhWS+Tk2DRhN0J90XOJsTodhM4ZR3LzWXKzCw1PsC7yv+bS3/JL14NYYL9NTGG
 DomzNY4kKGvX1UIQYK1klGkfy2pPeAUKsVkFPXRdSOqg+sMwbBM1Q77YBSyb7Eh9pTM+
 ymcMzN7KKbJw2ddmfPZ8otgmiviMoVlg1gpjJD4EkftVwqib042P2kTSqsJ09j2FurVC
 fkxkRb0XLObRS35aTooeZV+vzeyPKpn6XnsLuyP/eDySFeHrObtaA7bbuApQeA5nZy3P
 mE3A==
X-Gm-Message-State: AOAM5322S+hXEu741xGwqlLtSCoUD0FHdgqyglX4dBaf88/y0NTuv6LS
 Y2a6qxCDmeqtxr2WPIV2TAQCvCZOQV+ozw==
X-Google-Smtp-Source: ABdhPJxDVcr0X1v3LK0DYj2qUZOKkEZujNVzvZ/bG3v6sVov+5qtsvLs63l2jFRViUy3GZmB+POOeg==
X-Received: by 2002:aa7:ca10:: with SMTP id y16mr5617630eds.345.1595665671092; 
 Sat, 25 Jul 2020 01:27:51 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id gu15sm2325411ejb.111.2020.07.25.01.27.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jul 2020 01:27:50 -0700 (PDT)
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>,
 "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <MA1PR01MB25884DB85773F1978595CD6890740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <a7903b46-932a-4848-cffe-4dba3c53f43b@ettus.com>
Date: Sat, 25 Jul 2020 10:27:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB25884DB85773F1978595CD6890740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] Data rate using usrp and grc
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Hi Koyel,

> Will there be packet drops if USRP source is set at 32 bit complex
float in grc when receiving at 100 MSPS each from two channels?

as to your previous questions regarding "will my computer be able to
keep up": We can't tell you how fast your computer and storage is.

Anyway,

> I am unable to set usrp source block in grc to 16 bit complex as then
the usrp source block is not compatible with file sink which doesn=92t
have option for 16 bit complex

Nothing in GNU Radio cares about the content of the data bytes you're
pushing around: simply set your file sink to e.g. int, or float, or to
short with vector length 2, or to byte with vector length 4: Doesn't
matter, as long as the item size ends up being 32 bits.

Best regards,

Marcus

On 25.07.20 09:43, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> I want to capture data from usrp 2955 using USRP Source block of grc and =
write to file using file sink block of grc. Will there be packet drops if U=
SRP source is set at 32 bit complex float in grc when receiving at 100 MSPS=
 each from two channels? That makes 2*100e6*64 (32 bit I and 32 bit Q) =3D =
12800e6 or 12.8 gbps. I am unable to set usrp source block in grc to 16 bit=
 complex as then the usrp source block is not compatible with file sink whi=
ch doesn=92t have option for 16 bit complex. Please help
>
> Regards,
> Koyel
>
> Get Outlook for iOS<https://aka.ms/o0ukef>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
