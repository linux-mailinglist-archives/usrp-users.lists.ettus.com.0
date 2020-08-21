Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 947B324D6CB
	for <lists+usrp-users@lfdr.de>; Fri, 21 Aug 2020 16:00:30 +0200 (CEST)
Received: from [::1] (port=51916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k97an-0001Ye-Gu; Fri, 21 Aug 2020 10:00:29 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:32801)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1k97ak-0001QS-5e
 for usrp-users@lists.ettus.com; Fri, 21 Aug 2020 10:00:26 -0400
Received: by mail-ed1-f49.google.com with SMTP id w14so1004743eds.0
 for <usrp-users@lists.ettus.com>; Fri, 21 Aug 2020 07:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=5/zhzsC0d3D3xtBM5Qplpe4xBADyuYJpasGarIkcR8Q=;
 b=fDGBXzt31pYLlJYu3Nq6j+0vSQYYE7tERQySR6nOSuPhFjmzM3aWk+YiDv+zQYlAVQ
 SXsc+/5Bkg77t1jVT5XX8fuaVMdAn7BcIoEKpjSA0tkdHYi6Bkn9LLKPGP1ZlXRd3zdl
 +Cbyr6L8plbnWI1Yg5lJoRfAzymCuRhZ8bQR+lcfWb+1Lt1qx4prfO/5voTs7b9/uj67
 xPGWasGio9dxNHDEG014YkCXU6Cehw1KMfQstNvIHZL1vKLwouCp+2eLX1jA3go5LaZl
 wXNiFa/ca3JL8GmIXh903FDMsunBQw32wEj2lruDN6BukcDImX8kmP1DytGhGjFFtORS
 dpFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=5/zhzsC0d3D3xtBM5Qplpe4xBADyuYJpasGarIkcR8Q=;
 b=M4fIxWWUWfoXek50P4bc4wsCr3lO4d7UWy8Ydmsfd5dP9jiTwBrfZkT/4Hyw+YnCcD
 HbArseSxn4eTWiulcjWNplzBcd9gw+6SnqtcoQMKv6lbxEvEz3V0nDG/6edUgoAmT2Np
 2geuNpHcDBFb4aOJ0kcsP5g4OnoRJtA6z9cgGsWYKE4ePK9UA0ot410YvCfjhhNtRgIj
 5GKjKI8O57ibyrlNaGTMwYAaZKDOfcLnoqm6dRgWG8O46pWhJIBwXs+eblSRiPUpmw+5
 +/0R61E/C4F16KrqTbF8XbQqdyXXjU5cD29CRBOYBAFKrzSWKveuRRLQ5Ec8s7XQ+tUS
 dn2Q==
X-Gm-Message-State: AOAM530AkHTHuZYvrKJOsKeb4aqb7gSaGofBcOI/ek16/AtMu/40ld4S
 rsXGk5YgicMbqy1yDr7CeDp34z2kVL7Lhbep
X-Google-Smtp-Source: ABdhPJxr+/Kg5TCUv3j2uCiMnh42hK0kO3FmKoKY8zt3pxVgH/hvXFp/vlcfL3x+2/HTZTtVbQViBg==
X-Received: by 2002:a50:fc82:: with SMTP id f2mr2894944edq.53.1598018384825;
 Fri, 21 Aug 2020 06:59:44 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-144.hsi.kabel-badenwuerttemberg.de. [46.223.163.144])
 by smtp.gmail.com with ESMTPSA id oh22sm109667ejb.47.2020.08.21.06.59.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Aug 2020 06:59:43 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAJU_EcXAiJowrbTc3vU=6MSfe6=9La2Lg_=Cz_V3Eqn-PdN4CQ@mail.gmail.com>
Message-ID: <81fdbf13-ce4d-2b46-aa45-e59638c1c127@ettus.com>
Date: Fri, 21 Aug 2020 15:59:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAJU_EcXAiJowrbTc3vU=6MSfe6=9La2Lg_=Cz_V3Eqn-PdN4CQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Ordering of I/Q data in buffers on the host
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

fArray[i*2] are the I components,
fArray[i*2+1] are the Q components,

exactly as you'd get with a (libc <cmath> or C++ <complex> std::) complex.

Best regards,
Marcus

On 21.08.20 15:51, Nate Young via USRP-users wrote:
> Hi All.
>
> I am using a Linux based host with b205mini and have a question on the
> ordering of I and Q samples in a buffer.
>
> If I create a buffer of floats, and then send them via the API
> uhd_tx_stream_send(), which sample should come first in the buffer?
> I know the I and Q are interleaved, but should Q fill the even positions,
> or I?
> If it matters, I am using f32 on the host with sc16 over the wire.
>
> To help clarify my question...  Please review the following pseudo-code
> that loads values into the even and odd values of the transmit buffer.
>
> float fArray[100];
> for(i=0;i<50;i++)
> {
>      fArray[i*2] = (float)0.12345;                     //   <=== Load the
> even values.  is this I[n] or Q[n]?
>      fArray[(i*2)+1] = (float)0.6789;                //   <=== Load the odd
> values.  is this Q or I?
> }
>
> Thank you.
> Nate
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
