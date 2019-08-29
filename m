Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B34A1345
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2019 10:11:24 +0200 (CEST)
Received: from [::1] (port=53402 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3FWc-0003A4-Ch; Thu, 29 Aug 2019 04:11:22 -0400
Received: from mail.mtit.org ([95.143.128.160]:43504)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <rybka@mtit.org>) id 1i3FWX-000317-VS
 for usrp-users@lists.ettus.com; Thu, 29 Aug 2019 04:11:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mtit.org;
 s=feb16; h=Message-ID:Subject:To:From:Date:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=diMGEuFBcBreu50+042ITxiuDt6q+AVsQhG0oMm49og=; b=B2OMlxhDL3DOunqWq67hdV0/e+
 ZfQR2cTRjtxkBGiROvKGT84g0uedo8hgqZf9QqbzLz0k/2uRlgg9nVW4ZdnbyKcpAPDtEVGQq11ku
 +UZls8jl2f6f+J71ynmsopQ5EeCqimFDvrGVp3q28WcpXIif1FrYcYXOhYL/x4+EMgzw=;
Received: from localhost ([127.0.0.1] helo=10.237.4.122)
 by mail.mtit.org with esmtp (Exim 4.92)
 (envelope-from <rybka@mtit.org>) id 1i3FVn-0007fm-Te
 for usrp-users@lists.ettus.com; Thu, 29 Aug 2019 10:10:36 +0200
MIME-Version: 1.0
Date: Thu, 29 Aug 2019 10:10:31 +0200
To: usrp-users@lists.ettus.com
Message-ID: <7c488dd82b360fb737d6f203b7b844df@mtit.org>
X-Sender: rybka@mtit.org
User-Agent: Roundcube Webmail/1.1.12
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "mail.mtit.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I have encountered a strange problem using UHD 3.13
 and 3.14 releases under Windows. I am using X310 USRPs for some time now,
 and didn't have any problem with them. My development environment is Windows
 10, VS2017, boost 1.67 and UHD versions 3.13 and 3.14. When I tried to use
 my software with B200mini USRP device, UHD completely crashed. I did some
 investigation, and found out,
 that even original Ettus Research binary distribution
 crashes on USB devices. [...] 
 Content analysis details:   (-1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ettus.com]
Subject: [USRP-users] USB devices not working with recent UHD drivers on
 Windows systems
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
From: Jakub Rybka via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jakub Rybka <rybka@mtit.org>
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

   Hello,

I have encountered a strange problem using UHD 3.13 and 3.14 releases 
under Windows. I am using X310 USRPs for some time now, and didn't have 
any problem with them. My development environment is Windows 10, VS2017, 
boost 1.67 and UHD versions 3.13 and 3.14. When I tried to use my 
software with B200mini USRP device, UHD completely crashed. I did some 
investigation, and found out, that even original Ettus Research binary 
distribution crashes on USB devices.

Even this tiny bit of code crashes when compiled and run under Windows:

int UHD_SAFE_MAIN(int argc, char *argv[])
{
   std::string hint = "";
   uhd::device_addrs_t addrs;

   addrs = uhd::device::find(hint, uhd::device::ANY);
}

If you want to verify this does not work with USB devices at all, just 
run uhd_find_devices from UHD 3.14.1.0 binary release on bus series 
USRPs. I did use 
http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-release/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe

I did trace the problem with uhd::device::find to destructor 
~libusb_device_impl(void), which calls libusb_unref_device. This should 
be called after libusb_free_device_list in libusb_device_list_impl, but 
when tracing the code, strange jumps occurs, and I suspect devices are 
unreferenced in destructor before they can be freed (but not 
unreferenced) in libusb_free_device_list. This works perfectly under 
linux, but not in Windows. It can be some compiler optimization problem.

This is not the only problem in UHD, just *any* attempts to use USB 
devices fails. uhd::usrp::multi_usrp::make for example runs, but throws 
some 4 exceptions.

More strangely, I suspect there is more to Windows UHD trouble. If I do 
this: uhd::device_addr_t addr; code fails with exception, with no USRP 
devices connected. It is very similar to 
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057279.html 
.

Does anyone have any clue how to resolve this issue ? I am using linux 
as primary development OS with UHD, and I am not as fluent with MSVC 
compilers. I am using Windows just to compile Windows version of my USRP 
software.

Variants tested:

Visual Studio 2015 and Visual Studio 2017, in their latest patch 
versions.
Boost 1.67, 1.68, 1.69 and 1.70
libusb 1.0.22 and 1.0.23rc3
debug and release, static and dynamic, and static and dynamic runtime 
versions of all three libraries.

None does work.

Best regards,

Jakub Rybka

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
