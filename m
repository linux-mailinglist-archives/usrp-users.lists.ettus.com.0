Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1DD29CCCD
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 01:28:58 +0100 (CET)
Received: from [::1] (port=56638 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXZKj-0002FY-OY; Tue, 27 Oct 2020 20:28:57 -0400
Received: from mail-qv1-f45.google.com ([209.85.219.45]:41295)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kXZKg-00026K-6k
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 20:28:54 -0400
Received: by mail-qv1-f45.google.com with SMTP id t20so1614700qvv.8
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 17:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=srJt8/TFvlcCxVoP5sLefGIGz342cJJbWd+4mEW0z9I=;
 b=W4/sNzzfyqzWk0WafxScq74TNlTZoLhOD6QWcdMcE/4lvTH2oT8Fx3k4pH2gJtG0ni
 T15BrtftGNJiXYSKrcrMnA/jhkbKm+jwcH73wLktac1mkhAbzs5B05gJFRED3oGeLciI
 /3NlQT1jaSOV6TJMPyirvj867QEOGIJJ8RjhevM3eWO9BHsaSspi/LzE6cDyS8plvaL4
 o+mrxW49yKXrc2pPSzOK2qScoMV99ylIiGBxIarGRXMtvm8FqnUJPbgnH7HBlAzZZ1Fd
 d8SQALBBFdQuhz40LM0a61X11DWsuruOJzRMM0CuAPrDfCT0S7SPXW1zeL8wfH49oe01
 l5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=srJt8/TFvlcCxVoP5sLefGIGz342cJJbWd+4mEW0z9I=;
 b=OPzjRhaObV+dc/+BIgsjjjVJ3U5nj1ZkfB2Z7bVSQKoX55yEfX8FF/50zKN+STbasb
 6j4R3E2WlbRP9Cc3zuMmoVMAswOSysu4RUMMMqip8lqoRHljxJmnTlZ+6HJPG6saF3xN
 D61G+3thg3jtlMmgO3cQ9bw3bHc8uRXsy2hG1lGC4+UATZgBva1fXK/pHMhC2JhT1DZ5
 KhnoMQFBj/ltOxEj9iHhUnM3I1s6rsqC8Yr2/KIIt00hYuKQR2Prs/Mlt8TTlJ+wkN+K
 gsw8pFuRYkS1ZyxZem0Ft/ahzxO3ciiGm9veKOlEFkC8K5jlPofZ0Vc38HJqoyORoxjG
 HYCA==
X-Gm-Message-State: AOAM531OLRZjin/fFbLPONIpR1MrN/kGbNtkxaEps3Vk/SzJwM/ZEHv4
 2bzYnb+TqYXdH8aOXnHroRxf1PlZBsikdA==
X-Google-Smtp-Source: ABdhPJxGNwaJhF8lJg2sIU2V5vhLk/9YMUOCELqYB1Z4TZblNLUnROg+cykCl7m2Nb0qpEQmqGmhQg==
X-Received: by 2002:a0c:b664:: with SMTP id q36mr4888697qvf.6.1603844893424;
 Tue, 27 Oct 2020 17:28:13 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id x5sm1926941qkf.44.2020.10.27.17.28.12
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Oct 2020 17:28:13 -0700 (PDT)
Message-ID: <5F98BB1C.7070300@gmail.com>
Date: Tue, 27 Oct 2020 20:28:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAAC=UJPpvpO2GaKDEfMuaHDyepNhydZ+DRBqKvXOMgkCuQSf-w@mail.gmail.com>
In-Reply-To: <CAAC=UJPpvpO2GaKDEfMuaHDyepNhydZ+DRBqKvXOMgkCuQSf-w@mail.gmail.com>
Subject: Re: [USRP-users] USRP B200mini half-duplex 1 port
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 10/27/2020 08:24 PM, Alvaro Pendas Recondo via USRP-users wrote:
> Hello,
>
> I am trying to implement a half-duplex system with one antenna, 
> preferably using just one port in the USRP device. I have noticed that 
> the port that is labelled as TX in the B200mini can also receive (the 
> same as the TX/RX port in the "normal" B200). My question is, is it 
> possible to change modes in that port during execution time? I have 
> read that, as a rule of thumb, the port should receive as default and 
> transmit when it receives samples to do so. However, I do not know if 
> that functionality applies to the B200mini.
>
> If it is possible, do you have any general ideal about the best way to 
> do it in GNURadio?
>
> Best regards,
>
> Alvaro
>
>
As far as I know the TX port on the B200mini is actually a TX/RX port, 
and the transmit/receive switching logic is implemented in the hardware.

You might post to the discuss-gnuradio mailing list on topics related to 
Gnu Radio.   I've never implemented a TX/RX application in GR myself,
   but I'm fairly sure the hardware supports it.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
