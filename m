Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7826DAACA5
	for <lists+usrp-users@lfdr.de>; Thu,  5 Sep 2019 22:00:06 +0200 (CEST)
Received: from [::1] (port=53482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5xvH-0002dt-Pl; Thu, 05 Sep 2019 16:00:03 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:42979)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i5xvE-0002XR-A5
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 16:00:00 -0400
Received: by mail-qt1-f170.google.com with SMTP id c9so4309273qth.9
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 12:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=JK1+MfGoYBpTXGmA2PiPaWwjRpH2jCF0c/md+D6jJIY=;
 b=tfL3y91h5c67fl9309r+WGGKC03XrgU+NneK+wYY7+Vt2xaSoAzO3fs7+N1U45edRh
 NLMUAUIfagNd+O2M1oNHOC2k5VnoNOnfnfcuEDHfBmXXqS3ArHr9RH5OVX1PAPNCCCiS
 J1ZciO44bw1KklEKkcFdcjXJTVMjVD4Q32nP9ZGnXRmdgO8FTbuVaqMeaQC8t+lMm/a6
 eATYXhVKkvswRMmgx9VjUHfsjMnckg5vJTUukrbXku9njbzQyuwrNjxZu1AEdeNGOGKP
 qqXQ/tNyzSCz1ye55NFuSmN5q+nTL5MWTK/f9gBo/35aPVzLYRy7mkvElvzkes0xOjdB
 rbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=JK1+MfGoYBpTXGmA2PiPaWwjRpH2jCF0c/md+D6jJIY=;
 b=PmBnp2AKhxelltEaIHf+Vn9sAjgyeGQYCPNGoIkEtnrijD0vCV7JrbjnKp5W5G6Yn8
 fA+5A2UxR6yBUcLA6Z1ggHqRgUxHModivau5OyVyHPDCv8JSQE1vUOrtZrz8CYx82pC3
 vfxK8jUDfyLkq4P028i931k9LG9l/Gx8V5vJkXj+QeoH4PiUoU9ByKhlw7VBbJ6bb0ww
 yzsU9uEf7on+A0UJmlz4OPg1LmUbm3aQHttnL3bi7xWc3E9jOxKcIJXkzKNegqiX6SBa
 jwtZnckK9oG2oN8trs9lID2IvUXLheGDKkh/fL2F5XKBDvXMTWmEy0RlAR6lkUGZEnK0
 AFrg==
X-Gm-Message-State: APjAAAV81w6PsTO/WgiasKMvZ2wU3lwVTLpVRXWIju9A5228KVAfjTe0
 SnM+ecoM4rhEmyrzbs6LpuwuuOPM
X-Google-Smtp-Source: APXvYqys+tHsTsUNBjYxDERcdwqYhk0H+8CDufpNYoKh2XvSmMn8gSofEZFgZyVkvOaFM/plDTyAGw==
X-Received: by 2002:a05:6214:11ab:: with SMTP id
 u11mr3148845qvv.11.1567713559482; 
 Thu, 05 Sep 2019 12:59:19 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id s23sm1746108qte.72.2019.09.05.12.59.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 12:59:18 -0700 (PDT)
Message-ID: <5D716915.7020401@gmail.com>
Date: Thu, 05 Sep 2019 15:59:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <4f5d8fc2bf9ab0410a972bbbacd07b3a@imapproxy.vub.ac.be>
 <5D6FEF3A.4000706@gmail.com>
 <23692c4607f91d8f0e0f5933bf539182@imapproxy.vub.ac.be>
 <5D703EFB.5000302@gmail.com>
 <53057fc9e67907c28f7c647db4c8b194@imapproxy.vub.ac.be>
In-Reply-To: <53057fc9e67907c28f7c647db4c8b194@imapproxy.vub.ac.be>
Subject: Re: [USRP-users] time_now and daughterboard synchronization
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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

On 09/05/2019 03:57 AM, C=E9dric Hannotier via USRP-users wrote:
> On 2019-09-05 00:47, Marcus D. Leech via USRP-users wrote:
>> That's because, for weird internal reasons, there are actually TWO
>> time-of-day clocks on X310 and B210--one per "side".  I don't remember
>>   whether there  are two commands sent from the host side, or a single
>> command, that is acted-upon serially within the FPGA.  With a
>>   1PPS synchronization, the 1PPS causes a parallel load of the desired
>> time value into the time-of-day clocks on the motherboard.
> Thanks for the explanation.
>
> Is it specified somewhere in the documentation? Because it is clearly =

> stated in "set_time_now()" doc. that: "If only one MIMO master is =

> present in your configuration, set_time_now is safe to use because the =

> slave's time automatically follows the master's time". I think these =

> exceptions should be written somewhere in the doc. if that is not =

> already the case.
That's only really applicable for N210, which has a special "MIMO cable".



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
