Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F770429F1
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 16:52:51 +0200 (CEST)
Received: from [::1] (port=41506 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hb4cK-0000R4-Fy; Wed, 12 Jun 2019 10:52:48 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:46973)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hb4cG-0000IW-As
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 10:52:44 -0400
Received: by mail-qt1-f182.google.com with SMTP id h21so18772045qtn.13
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 07:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=3es1dk1PtZZ19/xkGJJauj07eaZqNlEz1Aiuw1OZ5o0=;
 b=lgt/81MG6QOx/tNjrwLH586pr/ccM2NV6Jd6bTVNGvHLYioI6lq1dc4ysjp0FeBFtB
 h5gyOuLVkf/pLqSoR37un+Ly5TkhsjCauWx1hPaA5dFwqcTP5rx2F4eApY7rIyLIUupD
 Jxqr6FOn77IAj+W2zHSS+vi3Ar1m9+aCiyaKqoYkINitcZjAZmGeUyM2X5QYdyDoNU7v
 /BqSmOrXMI8PlbALYaSYYs3Cv7WSs5zvXomoFSB7TufGP7Lxu8ttf3Mn6qRa5Foxou7P
 gMIdEzGfr2yH6YtiXLkO+YakFv/mSXGksj0gQYnQ2JC9NfwZJwmIGlX4xmC9fkygvt5i
 gl8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=3es1dk1PtZZ19/xkGJJauj07eaZqNlEz1Aiuw1OZ5o0=;
 b=Q/2ZtxhqzDYREKRboujwnS2XWSQuecKjElRwSzx0Adx8cmH+Zh0iu3+p79wMUVHCqm
 kprIxSmjjYPdBfpv3TuhD9v34VwCQFe8sb/Y850tm7PslAlx6Y3LfTgi1+q9D1fJKOZe
 12bwSH/s2ee4nYDrzPX61+noI4TuINT4syshxtFyBqOWpm9UIxXdz2W8GQiu8QAyz/XZ
 nOJJQDLyAck7c8/GK2/N3aBNKkjjmtBdkT4m3U6k+BmdVhKHACqs4l8lFTwalPFOLCYo
 f7e2yanEyVR2LnS5DdzpVyq6zarQTkeM+CMsV42uq32xcm4XhAUqyMOdz/8RTufIn/TA
 iwTQ==
X-Gm-Message-State: APjAAAV+AnR0iz3RENtStPfi7K7rNRX5xOnP+gb1/1sDLg0MCnVylBB+
 ypd6s9SOIEQTA4BILuzXuP7zs7hSuPY=
X-Google-Smtp-Source: APXvYqwqVAAHDsloNNa1Ic58LZQgl1ziZWcsA4D3HBWpkqi4dxXA+Ias3toU8r1wP1f9WBOLEsoPag==
X-Received: by 2002:ac8:7652:: with SMTP id i18mr61821300qtr.10.1560351123595; 
 Wed, 12 Jun 2019 07:52:03 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id w16sm4890qtc.41.2019.06.12.07.52.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 07:52:03 -0700 (PDT)
Message-ID: <5D011192.8050704@gmail.com>
Date: Wed, 12 Jun 2019 10:52:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paolo Palana <p.palana@itsystems.it>, usrp-users@lists.ettus.com
References: <1cc193d7-d0c0-4605-8bf2-e8b6dab5c3ec@itsystems.it>
 <5CFFD96E.8040504@gmail.com>
 <1da87304-f048-3055-61d1-8df695a04e8b@itsystems.it>
In-Reply-To: <1da87304-f048-3055-61d1-8df695a04e8b@itsystems.it>
Subject: Re: [USRP-users] problem configuring n310 using jtag
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

On 06/12/2019 03:34 AM, Paolo Palana wrote:
> Hello Marcus, thank you for your reply.You are perfectly right. The
> configuration is as follow.
>
> 1) I've my devel machine
>
> 2) on the same LAN (through gigabit switch) there is the machine where
> the n310 is connected.
>
> 3) Both machines have ubuntu 16.04 amd64 and vivavdo tools 2017.4
>
> 4) on the machine with the n310 is running hw_server (launched as root
> with the option -d)
>
> 5) I connect, with the vivado hardware manager from my devel machine to
> the remote machine with the n310.
>
> 6) the configuration bitstream is then "programmed" from my devel machine.
>
> NOTES:
>
> * the communication between my machine and remote machine seems to be
> ok. I can read from the vivado gui the values of the device properties
> (e.g. the dna value).
>
> * I can ssh into the n310 and works fine also the serial console (tested
> with screes as described here
> https://files.ettus.com/manual/page_usrp_n3xx.html)
>
> * all file in /dev/seria/by-id are present
>
> * with the same machines involved I'm perfectly able to configure my X310.
>
> LOGS:
>
> start_gui
> open_hw
> INFO: [IP_Flow 19-234] Refreshing IP repositories
> INFO: [IP_Flow 19-1704] No user IP repositories specified
> connect_hw_server -url xxx.xxx.xxx.xxx:3121
> INFO: [Labtools 27-2285] Connecting to hw_server url
> TCP:xxx.xxx.xxx.xxx:3121
> current_hw_target [get_hw_targets */xilinx_tcf/Digilent/xxxxxxxxxxxxx]
> set_property PARAM.FREQUENCY 15000000 [get_hw_targets
> */xilinx_tcf/Digilent/xxxxxxxxxxxxx]
> open_hw_target
> INFO: [Labtoolstcl 44-466] Opening hw_target
> 10.10.0.167:3121/xilinx_tcf/Digilent/xxxxxxxxxxxxx
> current_hw_device [get_hw_devices xc7z100_1]
> refresh_hw_device -update_hw_probes false [lindex [get_hw_devices
> xc7z100_1] 0]
> INFO: [Labtools 27-1434] Device xc7z100 (JTAG device index = 1) is
> programmed with a design that has no supported debug core(s) in it.
> WARNING: [Labtools 27-3361] The debug hub core was not detected.
> Resolution:
> 1. Make sure the clock connected to the debug hub (dbg_hub) core is a
> free running clock and is active.
> 2. Make sure the BSCAN_SWITCH_USER_MASK device property in Vivado
> Hardware Manager reflects the user scan chain setting in the design and
> refresh the device.  To determine the user scan chain setting in the
> design, open the implemented design and use 'get_property
> C_USER_SCAN_CHAIN [get_debug_cores dbg_hub]'.
> For more details on setting the scan chain property, consult the Vivado
> Debug and Programming User Guide (UG908).
> set_property PROBES.FILE {} [get_hw_devices xc7z100_1]
> set_property FULL_PROBES.FILE {} [get_hw_devices xc7z100_1]
> set_property PROGRAM.FILE {/tmp/usrp_n310_fpga_XG.bit} [get_hw_devices
> xc7z100_1]
> program_hw_devices [get_hw_devices xc7z100_1]
> ERROR: [Labtools 27-3165] End of startup status: LOW
> program_hw_devices: Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 .
> Memory (MB): peak = 6656.473 ; gain = 0.000 ; free physical = 26786 ;
> free virtual = 62498
> ERROR: [Common 17-39] 'program_hw_devices' failed due to earlier errors.
>
>
> If are necessary more informations please let me know.
>
> Have a good day.
>
> Paolo
>
>
So, the "process flow" you've chosen, JTAGing the FPGA image into place, 
is not a usual method for updating the FPGA image on the N310.
   The N310 is itself a computer platform, so has other mechanisms for 
updating the FPGA image:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_FPGA_Image

In fact, I'd spend some time with the entire getting-started guide, 
since the N310 is quite different than the X310.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
