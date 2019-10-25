Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E2DE40D0
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2019 03:01:52 +0200 (CEST)
Received: from [::1] (port=50316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNnz9-0005ah-0z; Thu, 24 Oct 2019 21:01:47 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:35498)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iNnz6-0005WE-6e
 for usrp-users@lists.ettus.com; Thu, 24 Oct 2019 21:01:44 -0400
Received: by mail-qk1-f176.google.com with SMTP id w2so263952qkf.2
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 18:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=Mu/Amd+ietaaw2dhS8ByYCzUVxJfduO4W0NOPdgiFo8=;
 b=Xd9vj7RLe0I2ktqyNxd0qlOQSDeeeJJAXzi5fn3rIjTBSrAEyHq/EDJWPjW3ueQne6
 z8OaUNX50RCJZfSyamq6wTcdJlv5TCNV9ZiQi2SRKnUg+yUnSR9TyBTkh38KOAYCyILg
 9docZv7FPjzekE8eLmv04jjZKo8/0vO1Sz5tB4q6oF5eu6F030w85N9RLI1/cL7TKISu
 KsYSXX0iQdI9YMzpqvTXFwWf3DGv2iAv+NNE9gbPUAnqJBh1LuhTJ6PmsQMyjrB9XOIl
 RoX/lA3lcUYR3Cih/R3ncbj4TWMjCZvg0eeIVe7CsW0vjwr1hDgNQhJTptQ9jrXTwrcS
 rsHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=Mu/Amd+ietaaw2dhS8ByYCzUVxJfduO4W0NOPdgiFo8=;
 b=SSetQZFQMqaMeijGNyeX+7JXu1/6OHXCFiv7+eiWCFLkPrxBEACZTiFoDtAGe1hBUK
 SJRsehQvgOLicuTK3lm91ZWXf35jbgRRfM/k1jAmyI7PaBrBxoeBbapXjXJcxwqtkEYr
 kvFZKDLrulr3j1Aoqyj67I1Y6zvr5xlzEVaeeoXPyqR9YYJdQmfuRV+G7VJl/P008IHT
 Bt056NJ/Jt6JYo0fKvNh2HdmaI/5Jrzd4WxQEbQTKJqE5ElQIdVrsHatMAk52djBGD5g
 yFq0c9ZmWasmbThNpaK0jqUqS3lg6GGjmw0n6yppTbImfWZpRXJbX82FrdsLYZaFlGB3
 Wi1A==
X-Gm-Message-State: APjAAAWLusLHs+oHIjeA86LKypJdH2P4oDHBPWFqwgE47mn9AZVbcys7
 6i4gkHqOYtPvCZbKyDyeyifIpKwmIrU=
X-Google-Smtp-Source: APXvYqz9WCr7NCgr8CQCEttRRaNLJQJOx+0U1N0oZ5ctMJXHcXDHGTKHm9RGR13ZEl/U5Ag4yPMo5A==
X-Received: by 2002:ae9:ef50:: with SMTP id d77mr697040qkg.430.1571965263290; 
 Thu, 24 Oct 2019 18:01:03 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id m63sm272392qkc.72.2019.10.24.18.01.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Oct 2019 18:01:02 -0700 (PDT)
Message-ID: <5DB2494D.2010700@gmail.com>
Date: Thu, 24 Oct 2019 21:01:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Karthik Vasudeva <kvasudeva06@gmail.com>
References: <CACakhLww_rjm-DtH=j8xO10EJktjUh8O6q-WAfkz0PxGvuQyGg@mail.gmail.com>
 <08867E88-4C8C-412B-BFF5-A6016CC16505@gmail.com>
 <CACakhLxWVKHxAtjNcfH692++RCp=fL7KewUWXzX-GPm22eOhUA@mail.gmail.com>
 <5DB23321.60901@gmail.com>
 <CACakhLz=_eDdXeEOieyHOa1cc+be_YEYUVHncKFnDyENHXQEOQ@mail.gmail.com>
In-Reply-To: <CACakhLz=_eDdXeEOieyHOa1cc+be_YEYUVHncKFnDyENHXQEOQ@mail.gmail.com>
Subject: Re: [USRP-users] [Discuss-gnuradio] Not able to find USRP N310 in
 host mode
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8350660767764175866=="
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

This is a multi-part message in MIME format.
--===============8350660767764175866==
Content-Type: multipart/alternative;
 boundary="------------000704090307030908090308"

This is a multi-part message in MIME format.
--------------000704090307030908090308
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/24/2019 08:38 PM, Karthik Vasudeva wrote:
> I tried, did not work.
>
> kvasude2@veneno:~$ uhd_usrp_probe --args 
> mgmt_addr=192.168.1.103,addr=192.168.10.2,type=n3xx
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; 
> UHD_3.14.1.HEAD-0-g0347a6d8
> Error: LookupError: KeyError: No devices found for ----->
> Device Address:
>     mgmt_addr: 192.168.1.103
>     addr: 192.168.10.2
>     type: n3xx
>
> Karthik
OK, so, can you ping both of these addresses?

Is port UDP port 49152 port open on your host?


>
> On Thu, Oct 24, 2019 at 7:26 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 10/24/2019 03:44 PM, Karthik Vasudeva wrote:
>>     I just tried with that address but still the same problem. Please
>>     find the below error message
>>
>>     kvasude2@veneno:~$ uhd_usrp_probe --args
>>     mgmt_addr=192.168.1.103,addr=192.168.10.2
>>     [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>>     UHD_3.14.1.HEAD-0-g0347a6d8
>>     Error: LookupError: KeyError: No devices found for ----->
>>     Device Address:
>>         mgmt_addr: 192.168.1.103
>>         addr: 192.168.10.2
>     you'll also need to add:
>
>     type=n3xx
>
>     to the device args.
>
>
>>
>>     I am not sure whether my way of configuring the RJ45 port to
>>     static is correct. Please provide pointers for the static
>>     configuration of RJ45 port.
>>
>>     Karthik
>>
>>     On Thu, Oct 24, 2019 at 2:51 PM Marcus D Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         Use the 192.168.1.103 address
>>
>>         127.0.0.1 is the address that’s used when running on the
>>         embedded platform within the N310.
>>
>>
>>
>>         Sent from my iPhone
>>
>>>         On Oct 24, 2019, at 1:29 AM, Karthik Vasudeva
>>>         <kvasudeva06@gmail.com <mailto:kvasudeva06@gmail.com>> wrote:
>>>
>>>         ﻿
>>>         Thank you for the pointer. I tried changing the network
>>>         configuration of the RJ45 port in the embedded system by
>>>         updating the eth0.network file as follows
>>>
>>>         [Match]
>>>         Name = eth0
>>>
>>>         [Network]
>>>         Address=192.168.1.103
>>>
>>>         [Link]
>>>         MTUBytes=1500
>>>
>>>         But still the uhd_find_devices shows the same mgmt_addr in
>>>         the embedded system as shown below
>>>
>>>         root@ni-n3xx-3198219:~# uhd_find_devices
>>>         [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
>>>         UHD_3.14.1.1-0-g0347a6d8
>>>         --------------------------------------------------
>>>         -- UHD Device 0
>>>         --------------------------------------------------
>>>         Device Address:
>>>             serial: 3198219
>>>             claimed: False
>>>             mgmt_addr: 127.0.0.1
>>>             product: n310
>>>             type: n3xx
>>>
>>>         Karthik
>>>
>>>
>>>
>>>         On Thu, Oct 24, 2019 at 12:04 AM Marcus D. Leech
>>>         <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>>>         wrote:
>>>
>>>             On 10/24/2019 12:03 AM, Karthik Vasudeva wrote:
>>>>             Thank you for the clarification. Actually, I am using
>>>>             the RJ45 connection through a router and tried probuhd
>>>>             udp ports opening along with mgmt_addr but still the
>>>>             same problem. Please find the below error message
>>>>
>>>>             kvasude2@veneno:~$ uhd_usrp_probe --args
>>>>             mgmt_addr=127.0.0.1,addr=192.168.10.2
>>>>             [INFO] [UHD] linux; GNU C++ version 7.4.0;
>>>>             Boost_106501; UHD_3.14.1.HEAD-0-g0347a6d8
>>>>             Error: LookupError: KeyError: No devices found for ----->
>>>>             Device Address:
>>>>                 mgmt_addr: 127.0.0.1
>>>>                 addr: 192.168.10.2
>>>>
>>>>             I used mgmt_addr shown below from the embedded system.
>>>>             Please correct me if I am wrong.
>>>             127.0.0.1 is always your local host machine, so not
>>>             correct in this case.
>>>
>>>             If you read through the document I pointed you at,
>>>             you'll see that by default, that RJ45 connection uses
>>>             DHCP to get an address.  The document
>>>               talks about changing that to a static address if you
>>>             need to.
>>>
>>>
>>>>
>>>>             root@ni-n3xx-3198219:~# uhd_find_devices
>>>>             [INFO] [UHD] linux; GNU C++ version 7.3.0;
>>>>             Boost_106600; UHD_3.14.1.1-0-g0347a6d8
>>>>             --------------------------------------------------
>>>>             -- UHD Device 0
>>>>             --------------------------------------------------
>>>>             Device Address:
>>>>                 serial: 3198219
>>>>                 claimed: False
>>>>                 mgmt_addr: 127.0.0.1
>>>>                 product: n310
>>>>                 type: n3xx
>>>>
>>>>             Karthik
>>>>
>>>>
>>>>
>>>>             On Wed, Oct 23, 2019 at 11:33 PM Marcus D. Leech
>>>>             <patchvonbraun@gmail.com
>>>>             <mailto:patchvonbraun@gmail.com>> wrote:
>>>>
>>>>                 On 10/23/2019 11:00 PM, Karthik Vasudeva wrote:
>>>>>                 I tried uhd_usrp_probe again but still the same
>>>>>                 problem. Please find the below error message
>>>>>
>>>>>                 kvasude2@veneno:~$ uhd_usrp_probe --args
>>>>>                 addr=192.168.10.2
>>>>>                 [INFO] [UHD] linux; GNU C++ version 7.4.0;
>>>>>                 Boost_106501; UHD_3.14.1.HEAD-0-g0347a6d8
>>>>>                 Error: LookupError: KeyError: No devices found for
>>>>>                 ----->
>>>>>                 Device Address:
>>>>>                     addr: 192.168.10.2
>>>>>                 https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connecting_the_Device
>>>>>                 Also, find the below message from the embedded
>>>>>                 system showing the IP of the SFP0 port for the
>>>>>                 reference.
>>>>>
>>>>>                 root@ni-n3xx-3198219:~# ip a
>>>>>                 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc
>>>>>                 noqueue qlen 1000
>>>>>                     link/loopback 00:00:00:00:00:00 brd
>>>>>                 00:00:00:00:00:00
>>>>>                     inet 127.0.0.1/8 <http://127.0.0.1/8> scope
>>>>>                 host lo
>>>>>                        valid_lft forever preferred_lft forever
>>>>>                 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu
>>>>>                 1500 qdisc pfifo_fast qlen 1000
>>>>>                     link/ether 00:80:2f:26:50:f8 brd ff:ff:ff:ff:ff:ff
>>>>>                     inet 192.168.1.102/24
>>>>>                 <http://192.168.1.102/24> brd 192.168.1.255 scope
>>>>>                 global dynamic eth0
>>>>>                        valid_lft 86266sec preferred_lft 86266sec
>>>>>                 3: *sfp0*: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu
>>>>>                 8000 qdisc pfifo_fast qlen 1000
>>>>>                     link/ether 00:80:2f:26:50:f9 brd ff:ff:ff:ff:ff:ff
>>>>>                 *inet 192.168.10.2/24 <http://192.168.10.2/24>*
>>>>>                 brd 192.168.10.255 scope global sfp0
>>>>>                        valid_lft forever preferred_lft forever
>>>>>                 4: sfp1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu
>>>>>                 8000 qdisc pfifo_fast qlen 1000
>>>>>                     link/ether 00:80:2f:26:50:fa brd ff:ff:ff:ff:ff:ff
>>>>>
>>>>>                 Karthik
>>>>>
>>>>                 So, something you need to understand about the N310
>>>>                 device is that it has an RJ45 port that is used
>>>>                 both for "management and control"
>>>>                   traffic from UHD, and is also an SSH destination,
>>>>                 etc, etc.
>>>>
>>>>                 The SFP ports are strictly for streaming, so you
>>>>                 need to use
>>>>                 "mgmt_addr=<the-addr-of-that-rj45>,addr=192.168.10.2"
>>>>                 in the device address,
>>>>                   and you need a connection for that RJ45 as well. 
>>>>                 HOWEVER, if you're streaming at lower rates (those
>>>>                 that can be supported over the
>>>>                   RJ45), you can simply use that RJ45 connection,
>>>>                 and ignore the SFP connections.
>>>>
>>>>                 More here:
>>>>
>>>>                 https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connecting_the_Device
>>>>
>>>>
>>>
>


--------------000704090307030908090308
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/24/2019 08:38 PM, Karthik
      Vasudeva wrote:<br>
    </div>
    <blockquote
cite="mid:CACakhLz=_eDdXeEOieyHOa1cc+be_YEYUVHncKFnDyENHXQEOQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">I tried, did not work.
        <div><br>
        </div>
        <div>kvasude2@veneno:~$ uhd_usrp_probe --args
          mgmt_addr=192.168.1.103,addr=192.168.10.2,type=n3xx<br>
          [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
          UHD_3.14.1.HEAD-0-g0347a6d8<br>
          Error: LookupError: KeyError: No devices found for -----&gt;<br>
          Device Address:<br>
              mgmt_addr: 192.168.1.103<br>
              addr: 192.168.10.2<br>
              type: n3xx<br>
        </div>
        <div><br>
        </div>
        <div>Karthik</div>
      </div>
    </blockquote>
    OK, so, can you ping both of these addresses?<br>
    <br>
    Is port UDP port 49152 port open on your host?<br>
    <br>
    <br>
    <blockquote
cite="mid:CACakhLz=_eDdXeEOieyHOa1cc+be_YEYUVHncKFnDyENHXQEOQ@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Oct 24, 2019 at 7:26
          PM Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 10/24/2019 03:44 PM, Karthik Vasudeva wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">I just tried with that address but still
                the same problem. Please find the below error message
                <div><br>
                </div>
                <div>kvasude2@veneno:~$ uhd_usrp_probe --args
                  mgmt_addr=192.168.1.103,addr=192.168.10.2<br>
                  [INFO] [UHD] linux; GNU C++ version 7.4.0;
                  Boost_106501; UHD_3.14.1.HEAD-0-g0347a6d8<br>
                  Error: LookupError: KeyError: No devices found for
                  -----&gt;<br>
                  Device Address:<br>
                      mgmt_addr: 192.168.1.103<br>
                      addr: 192.168.10.2<br>
                </div>
              </div>
            </blockquote>
            you'll also need to add:<br>
            <br>
            type=n3xx<br>
            <br>
            to the device args.<br>
            <br>
            <br>
            <blockquote type="cite">
              <div dir="ltr">
                <div><br>
                </div>
                <div>I am not sure whether my way of configuring the
                  RJ45 port to static is correct. Please provide
                  pointers for the static configuration of RJ45 port.<br>
                </div>
                <div><br>
                </div>
                <div>Karthik</div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Thu, Oct 24, 2019
                  at 2:51 PM Marcus D Leech &lt;<a
                    moz-do-not-send="true"
                    href="mailto:patchvonbraun@gmail.com"
                    target="_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="auto">Use the 192.168.1.103 address
                    <div><br>
                    </div>
                    <div>127.0.0.1 is the address that’s used when
                      running on the embedded platform within the N310. </div>
                    <div><br>
                    </div>
                    <div><br>
                      <br>
                      <div dir="ltr">Sent from my iPhone</div>
                      <div dir="ltr"><br>
                        <blockquote type="cite">On Oct 24, 2019, at 1:29
                          AM, Karthik Vasudeva &lt;<a
                            moz-do-not-send="true"
                            href="mailto:kvasudeva06@gmail.com"
                            target="_blank">kvasudeva06@gmail.com</a>&gt;

                          wrote:<br>
                          <br>
                        </blockquote>
                      </div>
                      <blockquote type="cite">
                        <div dir="ltr">﻿
                          <div dir="ltr">Thank you for the pointer. I
                            tried changing the network configuration of
                            the RJ45 port in the embedded system by
                            updating the eth0.network file as follows<br>
                            <div><br>
                            </div>
                            <div>[Match]</div>
                            <div>Name = eth0</div>
                            <div><br>
                            </div>
                            <div>[Network]</div>
                            <div>Address=192.168.1.103</div>
                            <div><br>
                            </div>
                            <div>[Link]</div>
                            <div>MTUBytes=1500</div>
                            <div><br>
                            </div>
                            <div>But still the uhd_find_devices shows
                              the same mgmt_addr in the embedded system
                              as shown below</div>
                            <div><br>
                            </div>
                            <div>root@ni-n3xx-3198219:~#
                              uhd_find_devices <br>
                              [INFO] [UHD] linux; GNU C++ version 7.3.0;
                              Boost_106600; UHD_3.14.1.1-0-g0347a6d8<br>
--------------------------------------------------<br>
                              -- UHD Device 0<br>
--------------------------------------------------<br>
                              Device Address:<br>
                                  serial: 3198219<br>
                                  claimed: False<br>
                                  mgmt_addr: 127.0.0.1<br>
                                  product: n310<br>
                                  type: n3xx<br>
                            </div>
                            <div><br>
                            </div>
                            <div>Karthik<br>
                            </div>
                            <div><br>
                            </div>
                            <div><br>
                            </div>
                          </div>
                          <br>
                          <div class="gmail_quote">
                            <div dir="ltr" class="gmail_attr">On Thu,
                              Oct 24, 2019 at 12:04 AM Marcus D. Leech
                              &lt;<a moz-do-not-send="true"
                                href="mailto:patchvonbraun@gmail.com"
                                target="_blank">patchvonbraun@gmail.com</a>&gt;

                              wrote:<br>
                            </div>
                            <blockquote class="gmail_quote"
                              style="margin:0px 0px 0px
                              0.8ex;border-left:1px solid
                              rgb(204,204,204);padding-left:1ex">
                              <div bgcolor="#FFFFFF">
                                <div>On 10/24/2019 12:03 AM, Karthik
                                  Vasudeva wrote:<br>
                                </div>
                                <blockquote type="cite">
                                  <div dir="ltr">Thank you for the
                                    clarification. Actually, I am using
                                    the RJ45 connection through a router
                                    and tried probuhd udp ports opening
                                    along with mgmt_addr but still the
                                    same problem. Please find the below
                                    error message
                                    <div><br>
                                    </div>
                                    kvasude2@veneno:~$ uhd_usrp_probe
                                    --args
                                    mgmt_addr=127.0.0.1,addr=192.168.10.2<br>
                                    [INFO] [UHD] linux; GNU C++ version
                                    7.4.0; Boost_106501;
                                    UHD_3.14.1.HEAD-0-g0347a6d8<br>
                                    Error: LookupError: KeyError: No
                                    devices found for -----&gt;<br>
                                    Device Address:<br>
                                        mgmt_addr: 127.0.0.1<br>
                                        addr: 192.168.10.2<br>
                                    <div><br>
                                    </div>
                                    <div>I used mgmt_addr shown below
                                      from the embedded system. Please
                                      correct me if I am wrong.</div>
                                  </div>
                                </blockquote>
                                127.0.0.1 is always your local host
                                machine, so not correct in this case.<br>
                                <br>
                                If you read through the document I
                                pointed you at, you'll see that by
                                default, that RJ45 connection uses DHCP
                                to get an address.  The document<br>
                                  talks about changing that to a static
                                address if you need to.<br>
                                <br>
                                <br>
                                <blockquote type="cite">
                                  <div dir="ltr">
                                    <div><br>
                                    </div>
                                    <div>root@ni-n3xx-3198219:~#
                                      uhd_find_devices <br>
                                      [INFO] [UHD] linux; GNU C++
                                      version 7.3.0; Boost_106600;
                                      UHD_3.14.1.1-0-g0347a6d8<br>
--------------------------------------------------<br>
                                      -- UHD Device 0<br>
--------------------------------------------------<br>
                                      Device Address:<br>
                                          serial: 3198219<br>
                                          claimed: False<br>
                                          mgmt_addr: 127.0.0.1<br>
                                          product: n310<br>
                                          type: n3xx<br>
                                    </div>
                                    <div><br>
                                    </div>
                                    <div>Karthik</div>
                                    <div><br>
                                    </div>
                                    <div><br>
                                    </div>
                                  </div>
                                  <br>
                                  <div class="gmail_quote">
                                    <div dir="ltr" class="gmail_attr">On
                                      Wed, Oct 23, 2019 at 11:33 PM
                                      Marcus D. Leech &lt;<a
                                        moz-do-not-send="true"
                                        href="mailto:patchvonbraun@gmail.com"
                                        target="_blank">patchvonbraun@gmail.com</a>&gt;


                                      wrote:<br>
                                    </div>
                                    <blockquote class="gmail_quote"
                                      style="margin:0px 0px 0px
                                      0.8ex;border-left:1px solid
                                      rgb(204,204,204);padding-left:1ex">
                                      <div bgcolor="#FFFFFF">
                                        <div>On 10/23/2019 11:00 PM,
                                          Karthik Vasudeva wrote:<br>
                                        </div>
                                        <blockquote type="cite">
                                          <div dir="ltr">I tried
                                            uhd_usrp_probe again but
                                            still the same problem.
                                            Please find the below error
                                            message
                                            <div><br>
                                            </div>
                                            <div>kvasude2@veneno:~$
                                              uhd_usrp_probe --args
                                              addr=192.168.10.2<br>
                                              [INFO] [UHD] linux; GNU
                                              C++ version 7.4.0;
                                              Boost_106501;
                                              UHD_3.14.1.HEAD-0-g0347a6d8<br>
                                              Error: LookupError:
                                              KeyError: No devices found
                                              for -----&gt;<br>
                                              Device Address:<br>
                                                  addr: 192.168.10.2<br>
                                              <div><a
                                                  moz-do-not-send="true"
href="https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connecting_the_Device"
                                                  target="_blank">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connecting_the_Device</a><br>
                                              </div>
                                              <div>Also, find the below
                                                message from the
                                                embedded system showing
                                                the IP of the SFP0 port
                                                for the reference.</div>
                                              <div><br>
                                              </div>
                                              <div>root@ni-n3xx-3198219:~#
                                                ip a<br>
                                                1: lo:
                                                &lt;LOOPBACK,UP,LOWER_UP&gt;
                                                mtu 65536 qdisc noqueue
                                                qlen 1000<br>
                                                    link/loopback
                                                00:00:00:00:00:00 brd
                                                00:00:00:00:00:00<br>
                                                    inet <a
                                                  moz-do-not-send="true"
href="http://127.0.0.1/8" target="_blank">127.0.0.1/8</a> scope host lo<br>
                                                       valid_lft forever
                                                preferred_lft forever<br>
                                                2: eth0:
                                                &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt;
                                                mtu 1500 qdisc
                                                pfifo_fast qlen 1000<br>
                                                    link/ether
                                                00:80:2f:26:50:f8 brd
                                                ff:ff:ff:ff:ff:ff<br>
                                                    inet <a
                                                  moz-do-not-send="true"
href="http://192.168.1.102/24" target="_blank">192.168.1.102/24</a> brd
                                                192.168.1.255 scope
                                                global dynamic eth0<br>
                                                       valid_lft
                                                86266sec preferred_lft
                                                86266sec<br>
                                                3: <b>sfp0</b>:
                                                &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt;
                                                mtu 8000 qdisc
                                                pfifo_fast qlen 1000<br>
                                                    link/ether
                                                00:80:2f:26:50:f9 brd
                                                ff:ff:ff:ff:ff:ff<br>
                                                    <b>inet <a
                                                    moz-do-not-send="true"
href="http://192.168.10.2/24" target="_blank">192.168.10.2/24</a></b>
                                                brd 192.168.10.255 scope
                                                global sfp0<br>
                                                       valid_lft forever
                                                preferred_lft forever<br>
                                                4: sfp1:
                                                &lt;NO-CARRIER,BROADCAST,MULTICAST,UP&gt;
                                                mtu 8000 qdisc
                                                pfifo_fast qlen 1000<br>
                                                    link/ether
                                                00:80:2f:26:50:fa brd
                                                ff:ff:ff:ff:ff:ff</div>
                                            </div>
                                            <div><br>
                                            </div>
                                            <div>Karthik</div>
                                          </div>
                                          <br>
                                        </blockquote>
                                        So, something you need to
                                        understand about the N310 device
                                        is that it has an RJ45 port that
                                        is used both for "management and
                                        control"<br>
                                          traffic from UHD, and is also
                                        an SSH destination, etc, etc.<br>
                                        <br>
                                        The SFP ports are strictly for
                                        streaming, so you need to use
                                        "mgmt_addr=&lt;the-addr-of-that-rj45&gt;,addr=192.168.10.2"
                                        in the device address,<br>
                                          and you need a connection for
                                        that RJ45 as well.  HOWEVER, if
                                        you're streaming at lower rates
                                        (those that can be supported
                                        over the<br>
                                          RJ45), you can simply use that
                                        RJ45 connection, and ignore the
                                        SFP connections.<br>
                                        <br>
                                        More here:<br>
                                        <br>
                                        <a moz-do-not-send="true"
href="https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connecting_the_Device"
                                          target="_blank">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connecting_the_Device</a><br>
                                        <br>
                                        <br>
                                      </div>
                                    </blockquote>
                                  </div>
                                </blockquote>
                                <br>
                              </div>
                            </blockquote>
                          </div>
                        </div>
                      </blockquote>
                    </div>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000704090307030908090308--


--===============8350660767764175866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8350660767764175866==--

