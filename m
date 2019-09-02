Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5715EA55A3
	for <lists+usrp-users@lfdr.de>; Mon,  2 Sep 2019 14:12:39 +0200 (CEST)
Received: from [::1] (port=53094 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i4lCA-0002ez-Jy; Mon, 02 Sep 2019 08:12:30 -0400
Received: from mail.mtit.org ([95.143.128.160]:55414)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <rybka@mtit.org>) id 1i4lC6-0002bB-KD
 for usrp-users@lists.ettus.com; Mon, 02 Sep 2019 08:12:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mtit.org;
 s=feb16; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qKkVjj/N+hkLr1nTCvWp1MK9jdxqFUmPcYXso0/HVC4=; b=ZxqaMCnayYZiZbI7LWbHSfqxlp
 ca7u6K59yFs+597P4uuewm+LCsEw9GzbqpI8JGVFbIzJKYqk0rEdEfRQwlVjUpodEOJIWqPaAnzv6
 igP+ledbAosbKS3SRRUEal98NeOSiXsuZwEcuaBg0WBXQjdfJrfZiTQciLL84EuJeUmI=;
Received: from localhost ([127.0.0.1] helo=10.237.4.122)
 by mail.mtit.org with esmtp (Exim 4.92)
 (envelope-from <rybka@mtit.org>)
 id 1i4lBQ-0004hu-BJ; Mon, 02 Sep 2019 14:11:44 +0200
MIME-Version: 1.0
Date: Mon, 02 Sep 2019 14:11:44 +0200
To: Sam Reiter <sam.reiter@ettus.com>
In-Reply-To: <CANf970YaRk_QUN2VfF+iVAa4+UvYiig0R+YGEd2isxNRQ3DWng@mail.gmail.com>
References: <7c488dd82b360fb737d6f203b7b844df@mtit.org>
 <CANf970YL45SR71Q8UgcNjymzTNGXYqLvRu=fqUBGHJaSmDCOEQ@mail.gmail.com>
 <e541a57f3cc909795dc4d2b1e717af43@mtit.org>
 <CANf970Zf3zjb1GNko89Vie3EJPdyR7HmQdaGWqoBJ1VUMHA3fw@mail.gmail.com>
 <6d7ee1b40bea1a5a88db23f5a88c4101@mtit.org>
 <CANf970YaRk_QUN2VfF+iVAa4+UvYiig0R+YGEd2isxNRQ3DWng@mail.gmail.com>
Message-ID: <28f67560c40a3fe00a9f58b181073909@mtit.org>
X-Sender: rybka@mtit.org
User-Agent: Roundcube Webmail/1.1.12
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "mail.mtit.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sam, I do NOT see it hang if I specify --args type=b200. I
 also found out, that it does not hang every time without specifying hint.
 Jakub. [...] 
 Content analysis details:   (-1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
Subject: Re: [USRP-users] USB devices not working with recent UHD drivers on
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
Cc: usrp-users@lists.ettus.com
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

Sam,

I do NOT see it hang if I specify --args type=b200. I also found out, 
that it does not hang every time without specifying hint.

Jakub.

Dne 2019-08-30 18:23, Sam Reiter napsal:
> Jakub,
> 
> If you specify:
> 
> uhd_find_devices.exe --args type=b200
> 
> Do you still see it hang?
> 
> Sam
> 
> On Fri, Aug 30, 2019 at 11:06 AM Jakub Rybka <rybka@mtit.org> wrote:
> 
>> Hello Sam,
>> 
>> rolling back to libusb 1.0.21 does indeed make things work
>> better, but
>> I must say far from perfect.
>> 
>> D:\Libs\bin>uhd_find_devices.exe
>> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900;
>> 
>> UHD_3.14.1.0-release
>> No UHD Devices Found
>> 
>> Without any device connected, I finally have "No UHD Devices Found"
>> and
>> successful return code 0. But with USB USRP device connected, it
>> just
>> hangs, doesn't matter if it have firmware loaded or not.
>> 
>> D:\Libs\bin>uhd_find_devices.exe
>> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900;
>> 
>> UHD_3.14.1.0-release
>> *HANGS*
>> 
>> But I can at least get output from uhd_usrp_probe:
>> 
>> D:\Libs\bin>uhd_usrp_probe.exe
>> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900;
>> 
>> UHD_3.14.1.0-release
>> [INFO] [B200] Loading firmware image: C:\UHD\usrp_b200_fw.hex...
>> [INFO] [B200] Detected Device: B200mini
>> [INFO] [B200] Loading FPGA image: C:\UHD\usrp_b200mini_fpga.bin...
>> [INFO] [B200] Operating over USB 3.
>> [INFO] [B200] Initialize CODEC control...
>> [INFO] [B200] Initialize Radio control...
>> [INFO] [B200] Performing register loopback test...
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>> *SHORTENED*
>> 
>> As you can see, radio is working properly, and can get all
>> properties
>> and device tree. If I try my test program, which calls only
>> uhd::device::find(hint, uhd::device::ANY);, i still do get
>> exceptions
>> even without any USB device, but at least it terminates with return
>> code
>> 0.
>> 
>> Exception thrown at 0x00007FFC1C4A9129 in UHDTest.exe: Microsoft C++
>> 
>> exception:
>> 
> boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<boost::system::system_error>
>> 
>>> at memory location 0x00000048601FB530.
>> Exception thrown at 0x00007FFC1C4A9129 in UHDTest.exe: Microsoft C++
>> 
>> exception: uhd::os_error at memory location 0x000000485F7DEB30.
>> The thread 0xfc has exited with code 0 (0x0).
>> The thread 0x820 has exited with code 0 (0x0).
>> The thread 0x138c has exited with code 0 (0x0).
>> The thread 0xe9c has exited with code 0 (0x0).
>> The thread 0x217c has exited with code 0 (0x0).
>> The thread 0x430 has exited with code 0 (0x0).
>> The thread 0x438 has exited with code 0 (0x0).
>> The thread 0x16dc has exited with code 0 (0x0).
>> The thread 0x1638 has exited with code 0 (0x0).
>> The thread 0x1c94 has exited with code 0 (0x0).
>> The thread 0x1dac has exited with code 0 (0x0).
>> The thread 0x22b8 has exited with code 0 (0x0).
>> The thread 0x1830 has exited with code 0 (0x0).
>> The thread 0x1330 has exited with code 0 (0x0).
>> The thread 0x3f0 has exited with code 0 (0x0).
>> The thread 0xdcc has exited with code 0 (0x0).
>> The program '[4644] UHDTest.exe' has exited with code 0 (0x0).
>> 
>> But I think it is safe to say, that libusb 1.0.22 and newer is
>> causing
>> *some* problems.
>> 
>> Best regards,
>> 
>> Jakub
>> 
>> Dne 2019-08-30 16:36, Sam Reiter napsal:
>>> Hey Jakub,
>>> 
>>> Thanks for the additional details. I can confirm that I've seen
>> some
>>> suspicious behavior from with UHD 3.14.1.0 binary on my machine
>> since
>>> you sent this in. It seems like libusb 1.0.22 causes crashing
>> behavior
>>> with uhd_find_devices. I rolled this back to libusb 1.0.21 and
>> things
>>> seem to have improved, but I need to do some more testing. I'd
>> like to
>>> know if you have similar results.
>>> 
>>> I'm going to get a fresh Windows image up and running today and
>> see if
>>> I can't characterize this any better on my end. I may reach back
>> out
>>> to you offline if there are any setup details we need to work
>> through.
>>> Otherwise, I'll try to post an update / resolution here once I
>> have
>>> it.
>>> 
>>> Sam
>>> 
>>> On Fri, Aug 30, 2019 at 6:13 AM Jakub Rybka <rybka@mtit.org>
>> wrote:
>>> 
>>>> Sam,
>>>> 
>>>> I do have drivers installed on Windows 10 machine. I can manage
>> the
>>>> code
>>>> to run by modifying UHD driver (commenting out
>> libusb_unref_device),
>>>> and
>>>> my radio is then properly found. What is bugging me, that even
>>>> original
>>>> Ettus compiled UHD installer from files.ettus.com [1] [1] fails.
>> If
>>>> there are no
>>>> UHD devices connected, uhd_find_devices.exe just shows "No UHD
>>>> Devices
>>>> Found". Under Windows, there is no such message. The program just
>>>> fails,
>>>> and does NOT write this message. I tested it on multiple
>> computers
>>>> running Windows 10 LTSC and Windows 10 Professional 1903.
>>>> 
>>>> Best regards,
>>>> Jakub
>>>> 
>>>> Dne 2019-08-29 16:54, Sam Reiter napsal:
>>>>> Jakub,
>>>>> 
>>>>> I'll look into this. The issues you're reporting with the binary
>>>> are
>>>>> probably what I'll want to try to reproduce first. Can you be
>> more
>>>>> specific as to the behavior of your system during the crash
>> you're
>>>>> reporting? Screenshots would be useful if there are dialogs
>>>> present
>>>>> during / after the crash.
>>>>> 
>>>>> Beyond that, it sounds like you've had this system up and
>> running
>>>> with
>>>>> a B series in the past, right? This would imply that you've
>>>> installed
>>>>> the Windows USB driver successfully:
>>>>> 
>>>> 
>>> 
>> 
> http://files.ettus.com/manual/page_transport.html#transport_usb_installwin
>>>>> and that you can see the B series device in the Windows Device
>>>> manager
>>>>> when connected.
>>>>> 
>>>>> Sam
>>>>> 
>>>>> On Thu, Aug 29, 2019 at 3:11 AM Jakub Rybka via USRP-users
>>>>> <usrp-users@lists.ettus.com> wrote:
>>>>> 
>>>>>> Hello,
>>>>>> 
>>>>>> I have encountered a strange problem using UHD 3.13 and 3.14
>>>>>> releases
>>>>>> under Windows. I am using X310 USRPs for some time now, and
>>>> didn't
>>>>>> have
>>>>>> any problem with them. My development environment is Windows
>> 10,
>>>>>> VS2017,
>>>>>> boost 1.67 and UHD versions 3.13 and 3.14. When I tried to use
>> my
>>>>>> software with B200mini USRP device, UHD completely crashed. I
>> did
>>>>>> some
>>>>>> investigation, and found out, that even original Ettus Research
>>>>>> binary
>>>>>> distribution crashes on USB devices.
>>>>>> 
>>>>>> Even this tiny bit of code crashes when compiled and run under
>>>>>> Windows:
>>>>>> 
>>>>>> int UHD_SAFE_MAIN(int argc, char *argv[])
>>>>>> {
>>>>>> std::string hint = "";
>>>>>> uhd::device_addrs_t addrs;
>>>>>> 
>>>>>> addrs = uhd::device::find(hint, uhd::device::ANY);
>>>>>> }
>>>>>> 
>>>>>> If you want to verify this does not work with USB devices at
>> all,
>>>>>> just
>>>>>> run uhd_find_devices from UHD 3.14.1.0 binary release on bus
>>>> series
>>>>>> USRPs. I did use
>>>>>> 
>>>>> 
>>>> 
>>> 
>> 
> http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-release/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe
>>>>>> 
>>>>>> I did trace the problem with uhd::device::find to destructor
>>>>>> ~libusb_device_impl(void), which calls libusb_unref_device.
>> This
>>>>>> should
>>>>>> be called after libusb_free_device_list in
>>>> libusb_device_list_impl,
>>>>>> but
>>>>>> when tracing the code, strange jumps occurs, and I suspect
>>>> devices
>>>>>> are
>>>>>> unreferenced in destructor before they can be freed (but not
>>>>>> unreferenced) in libusb_free_device_list. This works perfectly
>>>> under
>>>>>> 
>>>>>> linux, but not in Windows. It can be some compiler optimization
>>>>>> problem.
>>>>>> 
>>>>>> This is not the only problem in UHD, just *any* attempts to use
>>>> USB
>>>>>> devices fails. uhd::usrp::multi_usrp::make for example runs,
>> but
>>>>>> throws
>>>>>> some 4 exceptions.
>>>>>> 
>>>>>> More strangely, I suspect there is more to Windows UHD trouble.
>>>> If I
>>>>>> do
>>>>>> this: uhd::device_addr_t addr; code fails with exception, with
>> no
>>>>>> USRP
>>>>>> devices connected. It is very similar to
>>>>>> 
>>>>> 
>>>> 
>>> 
>> 
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057279.html
>>>>>> 
>>>>>> .
>>>>>> 
>>>>>> Does anyone have any clue how to resolve this issue ? I am
>> using
>>>>>> linux
>>>>>> as primary development OS with UHD, and I am not as fluent with
>>>> MSVC
>>>>>> 
>>>>>> compilers. I am using Windows just to compile Windows version
>> of
>>>> my
>>>>>> USRP
>>>>>> software.
>>>>>> 
>>>>>> Variants tested:
>>>>>> 
>>>>>> Visual Studio 2015 and Visual Studio 2017, in their latest
>> patch
>>>>>> versions.
>>>>>> Boost 1.67, 1.68, 1.69 and 1.70
>>>>>> libusb 1.0.22 and 1.0.23rc3
>>>>>> debug and release, static and dynamic, and static and dynamic
>>>>>> runtime
>>>>>> versions of all three libraries.
>>>>>> 
>>>>>> None does work.
>>>>>> 
>>>>>> Best regards,
>>>>>> 
>>>>>> Jakub Rybka
>>>>>> 
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> 
>>>> 
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> 
>>> 
>>> Links:
>>> ------
>>> [1] http://files.ettus.com
> 
> 
> Links:
> ------
> [1] http://files.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
