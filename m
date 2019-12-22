Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10991128EE8
	for <lists+usrp-users@lfdr.de>; Sun, 22 Dec 2019 17:45:48 +0100 (CET)
Received: from [::1] (port=57802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ij4MU-0006Us-SB; Sun, 22 Dec 2019 11:45:46 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:37798)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ij4MQ-0006NF-Qh
 for usrp-users@lists.ettus.com; Sun, 22 Dec 2019 11:45:42 -0500
Received: by mail-qk1-f172.google.com with SMTP id 21so11836920qky.4
 for <usrp-users@lists.ettus.com>; Sun, 22 Dec 2019 08:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=wIhNu8lo9+87YBp/VK3CtvW1tG1j4Qi/XP0iBxGXag4=;
 b=Czh+DbQczfC6bdfePJ0SIcILn5wZoNSt7/y+4VgCxcJw3qxSOl3Qh0miyvKTKOt3nC
 +DXpPTg8eRUCdsG3jiZvwj0IIEc7vM7OQ08WLSHaRDLEeaXJycdY02/f/NpzkIKzc2WA
 8s0DW53TmkBJ2qavdZVd9hoLXNwcuHhj1Jfcq+SSf9CuoCSxGWdus+Go+Z5XsM0dZKzj
 uWV+uCwDTFol68u6l/qP8mBw8qAf2Gr7yn/zcQB//TT7Ny3JN9r5Cj97kb9hdtsBaZXS
 6nhkNs82RhFo7aAm2/6UNBnsvqGGMj89XLUlaJ0AUh5VLJWqd2JI8d73V2n2qS4It2ei
 vBCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=wIhNu8lo9+87YBp/VK3CtvW1tG1j4Qi/XP0iBxGXag4=;
 b=PuIr5MQfcBAs7jqIaB9JQdMQQ4N0p9vkhcgQkKo8gJGgn/ZON3jAMfNATRMUfCFu4k
 oL/0bEdJFNI+x9e4dLIdMDLbiVxEhyErRmbZLm50jLdUIN5rv62CpedLTowazRSXNWEQ
 NQiVYbgmrlZb9rSy4GiMT7Ebz4RVF0zFHZrOVye35yqDHMxll74hyi6rqM1qU9a+CWH2
 6Y5lWwEAPAabJlK6jJbemaf1cBn3rJAQDskmlOghAlD/gCj3D2t7z6oR4SRO4whL4Wqw
 pzUo3CAYRrCo5JUWPcALXde1As82IjUV/0OI7uJaLjOOOuMgJYvVNIKMUTv5VNHB2Y5r
 fgPA==
X-Gm-Message-State: APjAAAV5zVBGyFal0UGmWkckdDjz0Ob1KfGjouLkgiidK4LxW/c46Tmj
 A9mQGTcDNGBbR8Z+H+gPKFgeLbAO2F4=
X-Google-Smtp-Source: APXvYqzVkk2xALQ12ZzJv99WeA6phdM9l6AEl/jjuqVzc2QUK2vp3dr3Md6MfCF2TjjPPqhnv91uaQ==
X-Received: by 2002:a37:a406:: with SMTP id n6mr23194238qke.63.1577033101776; 
 Sun, 22 Dec 2019 08:45:01 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id u4sm4878858qkh.59.2019.12.22.08.45.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Dec 2019 08:45:01 -0800 (PST)
Message-ID: <5DFF9D8C.9090906@gmail.com>
Date: Sun, 22 Dec 2019 11:45:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BMXPR01MB3944A65A50C00946F7389A26882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB3944A65A50C00946F7389A26882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] uhd error
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
Content-Type: multipart/mixed; boundary="===============4447805099527679492=="
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
--===============4447805099527679492==
Content-Type: multipart/alternative;
 boundary="------------010002020708000600060801"

This is a multi-part message in MIME format.
--------------010002020708000600060801
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/2019 11:15 AM, Snehasish Kar via USRP-users wrote:
> Hello
>
> Does anyone have a idea why the following error occurs
> terminate called after throwing an instance of 'uhd::io_error'
>   what():  EnvironmentError: IOError: [0/Radio_1] sr_write() failed: 
> EnvironmentError: IOError: Block ctrl (CE_02_Port_50) no response 
> packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) 
> [with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t 
> = long unsigned int]
>   at 
> /home/snehasish/dsp_dev/uhd-3.14.1.1/host/lib/rfnoc/ctrl_iface.cpp:142
>
> Aborted (core dumped)
>
> I am using uhd-3.14.1.1 with NI USRP 2955.
>
> Regards
> Snehasish
What sample rate are you running at?  Why type of network card do you 
have?   There are some Intel network chips that drop packets
   silently, and that can cause this problem.




--------------010002020708000600060801
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/22/2019 11:15 AM, Snehasish Kar
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BMXPR01MB3944A65A50C00946F7389A26882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri,Helvetica,sans-serif; font-size:
        12pt; color: rgb(0, 0, 0);">
        Hello <br>
        <br>
        Does anyone have a idea why the following error occurs<br>
        <span>terminate called after throwing an instance of
          'uhd::io_error'<br>
        </span>
        <div>  what():  EnvironmentError: IOError: [0/Radio_1]
          sr_write() failed: EnvironmentError: IOError: Block ctrl
          (CE_02_Port_50) no response packet - AssertionError:
          bool(buff)<br>
        </div>
        <div>  in uint64_t
          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
          [with uhd::endianness_t _endianness = (uhd::endianness_t)0u;
          uint64_t = long unsigned int]<br>
        </div>
        <div>  at
          /home/snehasish/dsp_dev/uhd-3.14.1.1/host/lib/rfnoc/ctrl_iface.cpp:142<br>
        </div>
        <div><br>
        </div>
        <div>Aborted (core dumped)<br>
        </div>
        <span></span><br>
        I am using uhd-3.14.1.1 with NI USRP 2955.<br>
        <br>
        Regards<br>
        Snehasish<br>
      </div>
    </blockquote>
    What sample rate are you running at?  Why type of network card do
    you have?   There are some Intel network chips that drop packets<br>
      silently, and that can cause this problem.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------010002020708000600060801--


--===============4447805099527679492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4447805099527679492==--

