Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BD41175F5
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 20:34:26 +0100 (CET)
Received: from [::1] (port=45836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieOnX-0003Lk-CC; Mon, 09 Dec 2019 14:34:23 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:37899)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ieOnU-00038G-2s
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 14:34:20 -0500
Received: by mail-qk1-f175.google.com with SMTP id k6so14189002qki.5
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 11:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=7mbb0itHbrhIkjq1Xn2yRjm1ysfI5ZvEJ/oC1ZjjwoA=;
 b=KCtBjYN+DMsgHjjRAIQ/1QPRoDuKuutGF8iXEdNJlh1R6nFuvNwZTgggkRJ8WDbgyX
 lkLpv7GUNHTWnquU3syF3+/d7uX/dniQxGUQoy/+XuQ8BkrzpBTYRvYF96ZQgHw8h9Re
 xjeEigIRBYIGAw86pfT4E0MjgM1V/faPKnlMg1JVFp4aH2Kb1khebuMB8UmZXpGPyYeA
 jQItE5dLdvLDxcjCB4JTJCZgI5e4eILnPyZmT5G/66GRz9rbbZbH1ssVzHMb8rwsNYNI
 C2G76BprW5tDsjyKAvYsIHn9u6R3ng2m3WZFwoJ3cJisYiJFqdZ7HFHnYB98KEMoCwsI
 6+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=7mbb0itHbrhIkjq1Xn2yRjm1ysfI5ZvEJ/oC1ZjjwoA=;
 b=lz9LsXf+O9AaO0LRChVpiCFHFC0QHipmPQlQ7HwXn7Z65qIT1cRfZAWnnpluOZRmLR
 kkR/A1UkF27F/u+adMabwgol453KU4FELZy0ejoy1R8WJ7/zL6Wv2VVJ1Nnaq8m3PPmZ
 4ClNDUmkuHElzHNbKQDhybjZ5qgbLRwtIDhdIgogoIQZKknMNuKAYZSxzTPoWSvVExDb
 S67MejpmGkzLZ//IHf5iXdYnFTlM+pmfmlKsWVkyGngf1zhlNteMwjemdw+eo3qHiykx
 SAgQjqucJuBdxhYE9vBxi/HU3kZxXtq/twGLo8c8i7K4N9p16pLTDPZygnv+cS1N9B1a
 FZHA==
X-Gm-Message-State: APjAAAV3nX11tQIpz5dFdITj34BBNhXNVRkD9d7skJ5ztpRiCX44nJE/
 yEFLwS+MgOVGu/od7cOS81UIODanFM0=
X-Google-Smtp-Source: APXvYqw7uC289CcBl1S1yC2+4ZOEUWn9G2qWfNq8un8UQnxxqldKGFWWSg6u/ephtvkISU206/62Lg==
X-Received: by 2002:a37:4943:: with SMTP id w64mr13600412qka.300.1575920019292; 
 Mon, 09 Dec 2019 11:33:39 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id c7sm171627qtj.91.2019.12.09.11.33.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 11:33:38 -0800 (PST)
Message-ID: <5DEEA191.8000704@gmail.com>
Date: Mon, 09 Dec 2019 14:33:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
In-Reply-To: <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

On 12/08/2019 05:19 PM, Lukas Haase wrote:
> Hi Marcus,
>
>> You'll need to look at the API here:
>>
>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a191b78b00d051d3d51c2f719361c1fb5
>>
>> and here:
>>
>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a607aee766d21228a7aaabde2771eb46f
>>
>> Basically, GRC will generate python code where it calls the
>> set_rx_freq() method (or set_tx_freq() method), and you need to modify this
>>    code to have set_command_time() and clear_command_time() wrapped
>> around those operations.
> Thank you.
>
> As I understand you referenced the USRP driver whereas GRC creates gnuradio objects (e.g.: usrp_source https://www.gnuradio.org/doc/doxygen-3.7.2/classgr_1_1uhd_1_1usrp__source.html )
>
> My dilemma is that I need to set the center frequency of the TX to "fc" and the center frequency of the RX to "2*fc" and its phase relationship should be identical for each "fc" (at least as long the USRP does not power cycle).
>
> The gnuradio API als exposes the USRP API you mentioned so I tried:
>
>          now = self.uhd_usrp_sink_0.get_time_now()
>          self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
>          self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))
>
>          self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 0)
>          self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 1)
>          self.uhd_usrp_sink_0.set_center_freq(self.fcenter, 0)
>
>          self.uhd_usrp_source_0.clear_command_time()
>          self.uhd_usrp_sink_0.clear_command_time()
>
> But this this the phase still jumps after a frequency change.
So, you're trying to measure the 2nd-harmonic energy of the TX signal?

What frequencies are involved here?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
