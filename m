Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E700E23E162
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 20:48:32 +0200 (CEST)
Received: from [::1] (port=53866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3kwI-0005EK-SY; Thu, 06 Aug 2020 14:48:30 -0400
Received: from mail-ej1-f54.google.com ([209.85.218.54]:39404)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1k3kwE-00055c-MV
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 14:48:26 -0400
Received: by mail-ej1-f54.google.com with SMTP id f24so30949567ejx.6
 for <usrp-users@lists.ettus.com>; Thu, 06 Aug 2020 11:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=851CwebPwRyLtmZB2P76DcE/RKLno+pB7L6FWKxio2k=;
 b=x32IhmFgECizouJMZENhSnnGXz7T86shYNhX8fNi04hsZP0YhWo1eX9EnnIlzJnheQ
 3gRY8qQIhsklI1mAZ74uwaWchdKz+8TgFtTtPGhrqOe4nVgjJty6gklh3/TqohnsE8EV
 X7UJFZJ0fS2Max3Slas6QUBPQWp952aMOgVKnTUTGLdYEOqrjXVK4Cx9p+7uS+nyCP4o
 Zu8Daf3D0qcK6ICdBqbrC+pMgAImiElCtUPGQl9rABA4/vLgFWDHJiSFeuSOSwk06yAG
 t1u+RpoUIoImssjNDKLXM2NLnVQDzYcFZ7hpvnUxtqbok3PCztEjRC4fLjhPzzKDDoXj
 9l5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=851CwebPwRyLtmZB2P76DcE/RKLno+pB7L6FWKxio2k=;
 b=jQ4B4AaPUI6ghW7P5mheR+AHbsW2/oo879GzZbk8sezXFiRjUJWMg+XnFnjv6TAra8
 XHl3I5VdC5L+MJj8VbvDHTYgIkdKnJjtoylQ0fwQZxmR1qDo1bkxCqRf/d4d97TlV8dv
 Vs8Hj5I9iCTBJTt1a7r/Kq1Q6clpZrc+wTscJUrxdjUdD3s76gFr9GSCcxIhROMlyPaM
 Zjfn46avBrgVBYtbF5Jsd7TPgKjJvBYJneAJa5VAsyn7h9giTASVkppyngOX46QPb3ZR
 lP/kB8MqTwgZTGPKn9wHOqMCFr7MUHUx7Azn1tHCQv8nsfG01SiUYaKCRiezP/1aS0KD
 M4wA==
X-Gm-Message-State: AOAM5311px8oqAm1XanMoSniQ8nN3eYFLwek85smlRxjWDto97mS/Dap
 No8u7OekDtP7wz7QcgyputVQdk52nMZ1lw==
X-Google-Smtp-Source: ABdhPJzNsEKQ8goKFaddI7XPtIc+VNWMvmb0lQrfk0PUP/pWBGjBrDXXCoRcU2X3xkOUvF+adCMr6w==
X-Received: by 2002:a17:906:4ec6:: with SMTP id
 i6mr5707966ejv.358.1596739664336; 
 Thu, 06 Aug 2020 11:47:44 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-144.hsi.kabel-badenwuerttemberg.de. [46.223.163.144])
 by smtp.gmail.com with ESMTPSA id g6sm4198814ejz.19.2020.08.06.11.47.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Aug 2020 11:47:43 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <trinity-f21300c1-4f5f-4fca-bb9c-e900f0a945ac-1596655559528@3c-app-gmx-bap03>
Message-ID: <e636af6b-adde-8ac6-79b0-9dce16e62058@ettus.com>
Date: Thu, 6 Aug 2020 20:47:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <trinity-f21300c1-4f5f-4fca-bb9c-e900f0a945ac-1596655559528@3c-app-gmx-bap03>
Content-Language: en-US
Subject: Re: [USRP-users] RFNoC: Initialization process and packaging
 questions!
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

Dear George,


On 05.08.20 21:25, George Smith via USRP-users wrote:
> After reading and doing the official /Getting Started with RFNoc Development 
> guide/, I implemented my own VHDL/Verilog files and adapted the corresponding 
> XMLs for GNURadio and UHD-Integration.
Nice!
>  Furthermore I changed and added needed 
> C++ functions in the include and lib folder. Afterwards I uploaded the bitstream 
> created by Vivado 2018.3 (AR_71898 Patch).
> Unfortunately the system is not working as expected. Generally the RFNoC block 
> is doing something (it's not hanging) but the generated output is wrong.
:(
> Of course, I created a simulation testbench before, which generates the correct 
> output.
:( :(
> In order to eliminate the misbehaviour, I have some more or less universal 
> questions:
> 1)
> My project itself is written in VHDL, and I wrote my testbench for this 
> (working) code. But as I understood so far the toplevel has to be in Verilog for 
> which the RFNoC-Modtool creates a system verilog file as a testbench. Is it 
> possible to include a Verilog toplevel file, with VHDL component files inside in 
> your testbench? If this mixed language setting would be working I could test my 
> system more in total.
Sure! All that has to match is the interface.
> 2)
> In my project I have some components, which need to be configured. My testbench 
> does this for the VHDL files as following: For the initilization I use an 
> (active-low) reset signal and set all valid signals to zero. After some clock 
> cycle periods, I assign the configuration values and set all valid signals to 
> one. If the configuration signals are successfully loaded the corresponding 
> ready signals are set to one (by the components itself) and the valid signals 
> are set to zero again. Afterwards the data from the input stream can be 
> processed. Generally said, this corresponds to the AMBA 4 AXI4-Stream Protocol 
> specification.
> My first question is, how does the initialization process works on the Ettus board?
> I know, that there are "test1_imp1.cc" and "test1_block_ctrl_impl.cpp" files in 
> the lib directory, where I can set the order and the configuration in the 
> constructor. I did this. So the configuration should be finished before the 
> stream processing starts. But using this way, are valid (and ready) signals 
> handled similarly as I explained before?

Hm, not really. If your host needs to configure your RFNoC entity, it
does so via register writes; there's no special "configuration time" signal.


> 3)
> If I execute the/uhd_ursp_probe/ command, I always get a warning from RFNoC: 
> /Can't find a block controller for key test1, using default block controller/
> Are the "/test1_impl.cc/" and the the "/test1_block_ctrl_impl.cpp/" the default 
> block controller or are these files the missing keys?

I'd have to look that up, but I don't think so. A block controller does
the setup mentioned above on the host side and communicates the block's
properties to UHD / RFNoC.

There's a default one (from which all others inherit).

>  Normally, I would 
> interpret these ones as the missing  keys, but as I execute the RFNoC block in 
> GNURadio I get some debug messages included in these files. So they seem to be 
> used and I am confused.
Puh, not quite sure what you're telling us here!
> 5)
> After the RFNoC block I use a copy block in order to save the output. I would 
> assume, that the output is only generated if the (output) valid signal equals one.
> Is it true?

Kind of. The valid signals are part of AXI4s, as you've noticed above,
and control the data flow between AXI4s things, like RFNoC blocks on the
FPGA.

The host doesn't see any of these, of course. It's just the way data is
exchanged on-FPGA within the RFNoC framework (much like your PC doesn't
see the ethernet framing of the datacenter that a webserver is in: these
are not part of the data communicated).

(also: why the copy block?)

> 6)
> Consecutively to my VHDL component, I use your RFNoC packet resizer. 

Why, exactly? This feels kind of arbitrary?

> It resizes 
> the input packets to a configurable size. But, how is an /input package /defined?
> Is it dependent from the bit size? Do I really need it for testing a basic 
> functionality or is the axi_wrapper sufficient?
> 7)
> I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7. Is there an Ettus FPGA 
> version planned, which supports Python 3?

The FPGA never sees anything even remotely related to Python... so um,
yes? Every FPGA version is Python2, 3 and Python 4 compatible!

You probably mean you want GNU Radio with Python 3: Yeah, that exists.
Update to a current version of Python. If you, for example, used a
current Ubuntu 20.04, you'd get GNU Radio 3.8.1.0, which is Py3, and
it's linked against Ubuntu 20.04's version of UHD, which is UHD 3.15.
So, no more building UHD and GNU Radio from source; you'd only need to
build gr-ettus from source. So, upgrade to a current OS, and you get all
that.

Best regards,

Marcus



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
