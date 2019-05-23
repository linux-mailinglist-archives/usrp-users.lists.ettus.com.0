Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C5D27976
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 11:41:15 +0200 (CEST)
Received: from [::1] (port=46504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTkDo-0007Jn-OO; Thu, 23 May 2019 05:41:12 -0400
Received: from mail-ed1-f47.google.com ([209.85.208.47]:40956)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <vladicasark@gmail.com>)
 id 1hTkDG-0007D6-DY
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 05:41:08 -0400
Received: by mail-ed1-f47.google.com with SMTP id j12so8290937eds.7
 for <usrp-users@lists.ettus.com>; Thu, 23 May 2019 02:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=qVWZDyYChrZoadnP2nBCcRG+4icnjwaoyTUXbPjuTZA=;
 b=hgDze7Emx057DFhDO5CDeMnvgqWaL5tpMQ0ADi7hlqvrbxUbA9U36y4XCMXRc0UiYW
 gCB3Gxxz3LzmTIAIzzI9BoTiA2gJc1bdMy0gXMEmi4719OAe9s5d2NUBxZeTsIutrfGH
 zCyFKzMwkzboGk6V//uf92vCKJrYqloxbLepCDiBJ76eDx854Yt5TqBnIIdjUY+yi6sR
 OlPKlRgOBdmdXpMe3u/Cv26OBjvZn06lKN1BOhTJNENkR0QcawLMPNmFT2B4dtPHnzVu
 3a2JVZP54EfryjSam1/ftS23zAEzFeJPfTx+gzwZXsbuBizmHmKxuy/Vgqzsk9ji8/UL
 IAwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qVWZDyYChrZoadnP2nBCcRG+4icnjwaoyTUXbPjuTZA=;
 b=l7uae59z4mHlOjb8xd4dZMolSDrcq79iJdC5QUIuzqhY8slk4WU4UYkccHPNFVNq6+
 yqp13KUqDoXq+Lpi3kNPb2W6z/RUxMx1Bg/96kLQLcPeuDsatZm8Hv+rMjUcwmQ2K/VZ
 fsIRBddWMczWmitrAqwjSE3sd7zyL27OkXex3a5rsNjI5HFvms27jF7hjEUEizEm8iaI
 CaOQ5lkgH8ENAcAKAkIZWoJi2YUcaNGIV6OxPt3/uut9PzMVFIWEwK8rckva9RKo6cNA
 sq19hmPtyyp9t5BaLZkjYvSuc2DydmxMEdXizlzWJPb4GxsWrn5RvvBmBvFxy+/uB+ZT
 NDPw==
X-Gm-Message-State: APjAAAWZAukQBTrDuRPSCKR5mA+QaM6icQULYaTxT5rO0CsCpZJND7oD
 6VQcMie0gm+EQ33xVFv2tpfH0oif
X-Google-Smtp-Source: APXvYqxKadNejb0RX4+Ha4jZxwKtiCVK2zY/lZ0XhKqLP4kJyHhr0ps2lj7cJookNam7c8aBHa0qLg==
X-Received: by 2002:a17:906:4482:: with SMTP id
 y2mr69585280ejo.201.1558604397050; 
 Thu, 23 May 2019 02:39:57 -0700 (PDT)
Received: from [141.20.182.174] ([141.20.182.174])
 by smtp.gmail.com with ESMTPSA id l5sm7742436edb.50.2019.05.23.02.39.56
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 02:39:56 -0700 (PDT)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <e83f1284-23a4-ac57-8943-993b9d6201b5@gmail.com>
Message-ID: <f57ef582-b99a-aaf9-0f0c-0e724dffacad@gmail.com>
Date: Thu, 23 May 2019 11:39:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e83f1284-23a4-ac57-8943-993b9d6201b5@gmail.com>
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Multiple TX streams
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
From: Vladica Sark via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Vladica Sark <vladicasark@gmail.com>
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

Hi again,

I found an easy way to reproduce the problem. I use two x310's and run 
the tx_timed_samples as:

tx_timed_samples --args "addr0=192.168.50.2,addr1=192.168.130.2" --secs 
0.5 --nsamps 1000000

sometimes it fails, sometimes it works. I use larger number of samples 
to be able to notice the LED blinking.

BR,
Vladica


On 23.05.19 08:36, Vladica Sark wrote:
> Hi folks,
> 
> I have 2x X310 connected to Octoclock (10 MHz + PPS), each with 2x UBX 
> frontends. I control them from a C/C++ program. Since there are 4 
> channels, I create 4 tx streamers in order to transmit timed samples on 
> each of them. The transmissions are not at the same time and this is the 
> reason for using 4 tx streamers. The problem is that when I schedule 
> timed transmissions on all of the channels (at the same time for test), 
> sometimes I do not get anything with recv_async_msg, i.e. the timeout 
> expires. This also happens even when I schedule only a single 
> transmission from single tx streamer (all 4 streamers are created).
> Sometimes it happens that everything is working without problems, i.e. I 
> make 200 transmissions on each of the channels and I get the proper 
> response from the recv_async_msg, but many times, restarting the same 
> program leads to just recv_async_msg with expired timeout. I am using 
> UHD 3.13.0.
> 
> I can probably use one streamer and transmitting 0's on the rest of the 
> channels, but I would like to avoid LO leakage in the air.
> 
> Best regards,
> Vladica

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
