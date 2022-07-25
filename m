Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD455803FD
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jul 2022 20:29:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70E43380D8E
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jul 2022 14:29:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658773771; bh=lOtoCN39WLhgGXj4suH1nkqsaWYr6vo9ur66W/oAWGw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wPbUfjq3Se4P9wTvol1HH7dfeLIx+gt5BKQd8p63TSoxLMZRsv0aXU/cFh/iBgTy/
	 X3sfss6lHTf+GCqEISO0NpJzpv9m2kM53Q2yopol5qSKdDqqluDb6l2RdoVCs/nB6U
	 A8ieiskjaFlwFKyj6YyN/WSG121JXCBLkvVZvAR1wGXLVAFaX1X7Jpg+hFhF1bAcwt
	 nWOyETxDFiyDeGfKMtIy8Ms6E3Ykl6xkOAa7GFmsYR9HYbAyHRU2Tjirn70+SLstRA
	 Z+IFjf6GSDfz/Feyuc9rJeGrOpilp5HqIZt0AjV8nY4sVSboVKNfXPaHWh+hMD/JEG
	 kggjJuM7X4Hig==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A4C4380E1F
	for <usrp-users@lists.ettus.com>; Mon, 25 Jul 2022 14:27:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PTUEQDIe";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id f14so9387068qkm.0
        for <usrp-users@lists.ettus.com>; Mon, 25 Jul 2022 11:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=wAhTjdP2NV8T7GPr9sHuquEn/GUfCjB2Pp0+OCjLimY=;
        b=PTUEQDIeSfuzpeEjmW5fa35/xft4eLb9W8Y5yYcbUKHr9ArXbo/btlWNItviADI9jc
         Y01NFtfL5Z8u32tfhzc+3dinYzxpcFdPTud0T3hOADHu9OfVa7M5UMnqKPKXJsN5UUGo
         sCwDZByHexrf54XzZU32k+DiIWQ4H+Zl3toTDf5j6PQ0TaI98ew/slVQphlHaNIQr7V2
         MQ1jbJIsOYvfYQX5JKAmZ/mnNWZjeJ+yYZ2dfUG5qtE2ZTjzsRYVnPk6daKUgLfqY8qt
         S5BjciBOvPVXpo9DPLdti2jJcCFZgdKGsyeYvpaqakJKR54HCXlp/x5W5rGfgnJwZn/1
         TC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wAhTjdP2NV8T7GPr9sHuquEn/GUfCjB2Pp0+OCjLimY=;
        b=AM7fnvzjtgkBNdTO4Y8uCVCOwjH1q02a5phDn9XgSj/XRMPBC1jLnocVugTtFSHCQi
         2HYezrGdiPEbmZkdUrja8db3859y5RDfAypoUSbWXdQS8f7pBfVBVMlYAsrzBqRpjkOW
         Xz6hZoxUMHLB2hGNuaAhqlK5Gy9fFnBae0PRXBvI9TcxhVayhXzzQpu3Dj0xWCxCZizP
         Q/M19faA0Zc35GsDfS5072Ywv5wOBcCIyh4WTTpEwyLapD2bEjLs6c69hq7wneM3GmZG
         /XY64rTek6Ey+ZRilIsTk2peO2XW/i7BIdNVdI/jacO0J19Mj2IbKBiHUfCH5r8dPkob
         JAGg==
X-Gm-Message-State: AJIora/+EW+andoP3RJ88vr0bbanUGQBrwvHA9zj63p48xPRdQ3TTPj1
	8XDN7HB3nB53v/3ZNLp/W0QGLzyNPGo=
X-Google-Smtp-Source: AGRyM1tv5T2RI7SNwp2GAxtkeBVmBTjzO654DxK5kkcIC1deVXCUva4TvVhz//cous3sY4BGjM+5jQ==
X-Received: by 2002:a05:620a:370b:b0:6b6:d59:fcab with SMTP id de11-20020a05620a370b00b006b60d59fcabmr10456269qkb.564.1658773655075;
        Mon, 25 Jul 2022 11:27:35 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id h15-20020a05620a244f00b006af3bc9c6bbsm10146808qkn.52.2022.07.25.11.27.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 11:27:34 -0700 (PDT)
Message-ID: <a03b9660-457b-abfc-ba0f-ebdff7dfe0c8@gmail.com>
Date: Mon, 25 Jul 2022 14:27:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <IBd5cchcf6Xr0pvxKToetQk1ZwJwrhv3dWR3IVvIM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <IBd5cchcf6Xr0pvxKToetQk1ZwJwrhv3dWR3IVvIM@lists.ettus.com>
Message-ID-Hash: I3UU5DKPGA5GXTE5QYKBLFT3IMVK63CQ
X-Message-ID-Hash: I3UU5DKPGA5GXTE5QYKBLFT3IMVK63CQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting low number of samples (USRP N310)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I3UU5DKPGA5GXTE5QYKBLFT3IMVK63CQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-07-25 14:23, skyung--- via USRP-users wrote:
>
> Hi, I am using USRP N310 connected via a switch with 10Gbps interface.
>
> I am using it to set up OAI 5G RAN but I keep getting the following 
> message:
>
>
> [HW] reived 16384 samples out of 23040
>
> [HW] ERROR_CODE_TIMEOUT (or ERROR_CODE_OVERFLOW)
>
>
> I wonder if it is a sync problem or something else.
>
> Has anyone had this problem? What is the cause of this problem and how 
> do I resolve the issue?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
My guess is the switch is dropping frames.

You could use the "rx_samples_to_file" example, and use "/dev/null" as 
the file, and do this at the same sample rate as your application. Does 
this produce TIMEOUT errors?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
