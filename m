Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F961ED9A1
	for <lists+usrp-users@lfdr.de>; Thu,  4 Jun 2020 01:50:14 +0200 (CEST)
Received: from [::1] (port=55422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgd99-000250-8D; Wed, 03 Jun 2020 19:50:11 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:35278)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jgd94-00020w-Vm
 for usrp-users@lists.ettus.com; Wed, 03 Jun 2020 19:50:07 -0400
Received: by mail-qk1-f196.google.com with SMTP id n141so4245214qke.2
 for <usrp-users@lists.ettus.com>; Wed, 03 Jun 2020 16:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=zKbQBM9BpVAwDUGkBGTqqr10hHdO6RXWQ2AvER2Efno=;
 b=WAV5KxB2rj8t2XwiG3o8OtJTh0xSQJZNY+iilCEpcVb0JPhIIKNpnRed2xyQucbRgL
 RuriTa7hfV8yjt3FzTMl4dE79qM61AX5OxZIWWJZ/Zp1nD2ce4d2XV2EWRWARZ3IyBEG
 F3U6tgjfCr0na9N+tugiD1UBra4HNPpHF5SxmtG9gnYmS0rALHK86C+VN16TVr2P77Vf
 qu9vCuece2MXVMi4ZAYURzB2uTGfQmjySrNOtVVZW9BEaDVRr1lKMDj2zT9KqccY/z9B
 XH8hmEj5Cc5DLJbD1zQTFy1nCnZAPVVCokjEgSRrfWoIJfHRWFpJLHQ0v51xi7uDzW2c
 2AGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=zKbQBM9BpVAwDUGkBGTqqr10hHdO6RXWQ2AvER2Efno=;
 b=JN4LxMHAUm7olh4KO5gkBbqkfueIZcpKFIqekrQxCDy82mX42CL5oCEZ9h7M0mhI8T
 6YkFLVRR+XN8D8TqBndWAMsKe62jOWjLFPYKtccB8JvdrTJKPIMdqx/o4thnYKIbLMa9
 VnVvr+Fjrkb2JZLClTgILlQF0mHhPAhZU0/zudpmtyjWhpLceGcoYSOOJk5eb4Oqk6it
 YPoFXzH2kTrNAQLfyDs7It+0/ecAR6O4mGNU0+zn0QGcJGARoXcz1rwKrgsC761jnRN7
 JwpxkQbnhl2KSlzNCGuKIxr5nqIliJ/JiIjyJCWDNHc4BdHqN1+mnHnGnVa60izWIR/f
 NckA==
X-Gm-Message-State: AOAM532nwbJlBHLu2m4X4c0CFMoAYJsFFVeOvRpiposcyHbkspGA3vui
 ByZrYJflo7DZUIQYNfcFZHIPt+jgkik=
X-Google-Smtp-Source: ABdhPJxbCPMzsXVrkUt+GI2OC0DeJTnPEqO/Hr+pZVjp4fQrMupEltS18j809Qvc3XD1aMRreJs7mg==
X-Received: by 2002:a37:a9cd:: with SMTP id s196mr2166766qke.315.1591228166211; 
 Wed, 03 Jun 2020 16:49:26 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id z77sm2168109qka.59.2020.06.03.16.49.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jun 2020 16:49:25 -0700 (PDT)
Message-ID: <5ED83704.10604@gmail.com>
Date: Wed, 03 Jun 2020 19:49:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>, 
 "Discuss-gnuradio@gnu.org" <Discuss-gnuradio@gnu.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAN-A3_s5gd=G9qYfra+=Jjqv25cgieqsPk1z4rbrkRTSmOSF9g@mail.gmail.com>
 <5ED82C3F.7090304@gmail.com>
 <CAN-A3_v1DaveR+8+iAD6qhLpcTkyLxXiEf5_4aLgBqEXx1ZTHw@mail.gmail.com>
In-Reply-To: <CAN-A3_v1DaveR+8+iAD6qhLpcTkyLxXiEf5_4aLgBqEXx1ZTHw@mail.gmail.com>
Subject: Re: [USRP-users] ERROR: using usrp source gnu-radio block with XG
 image (RFNoC enabled)
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
Content-Type: multipart/mixed; boundary="===============5620532241965758399=="
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
--===============5620532241965758399==
Content-Type: multipart/alternative;
 boundary="------------060300020101030703020802"

This is a multi-part message in MIME format.
--------------060300020101030703020802
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/03/2020 07:45 PM, Mohamed Yaaseen wrote:
> I have created a new flow graph for the non-RFNoC , one without any 
> device3 block.
> in the device parameter of the usrp source I am using 
> "addr0=192.168.30.2, addr1=192.168.40.2"  this string
>
> should I have to use "type=x300" ?
Yes. Since simply specifying an IP address isn't enough to unambiguously 
identify the device type, AFAIR, although from your previous log,
   it looks like it figured it out.

Also, when this is happening, can you ping those addresses, outside of 
any Gnu Radio or UHD application, just can you ping them as
   normal IP devices?

Also, I've copied usrp-users, where this conversation should probably be 
moved.



>
> regards,
> Mohamed Yaaseen
>
>
>
> On Thu, 4 Jun 2020 at 01:04, Marcus D. Leech <patchvonbraun@gmail.com 
> <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/03/2020 05:27 PM, Mohamed Yaaseen wrote:
>>     Hello Guys,
>>         I am using usrp x310 with default XG image. I have also setup
>>     the RFNoC platform in GNURadio with gr-ettus.
>>     RFNoC ddc example using RFNoC blocks works perfectly with 100MHz
>>     of bandwidth. But when I go back to using normal usrp source
>>     block which is a normal gr-uhd block, it throws the following error.
>>
>>
>>         [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>         UHD_3.15.0.0-16-ga3ece4f2
>>         [INFO] [X300] X300 initialization sequence...
>>         [INFO] [X300] Maximum frame size: 8000 bytes.
>>         [INFO] [X300] Maximum frame size: 8000 bytes.
>>         [INFO] [X300] Radio 1x clock: 200 MHz
>>         [INFO] [X300] Radio 1x clock: 200 MHz
>>         [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>         0xF1F0D00000000000)
>>         [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1296 MB/s)
>>         [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)
>>         [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>         0x12AD100000000001)
>>         [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>         0x12AD100000000001)
>>         [INFO] [0/DDC_0] Initializing block control (NOC ID:
>>         0xDDC0000000000000)
>>         [INFO] [0/DDC_1] Initializing block control (NOC ID:
>>         0xDDC0000000000000)
>>         [INFO] [0/DUC_0] Initializing block control (NOC ID:
>>         0xD0C0000000000000)
>>         [INFO] [0/DUC_1] Initializing block control (NOC ID:
>>         0xD0C0000000000000)
>>         terminate called after throwing an instance of 'uhd::io_error'
>>           what():  EnvironmentError: IOError: Block ctrl
>>         (CE_00_Port_30) no response packet - AssertionError: bool(buff)
>>           in uint64_t
>>         ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
>>         [with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG;
>>         uint64_t = long unsigned int]
>>           at
>>         /home/ya-seen/workspace/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>>
>>
>>
>>     what is this issue ? what am I doing wrong here ? Help,
>>     suggestions highly appreciated
>>
>>     thanks in advance !!
>>
>>     Regards,
>>     Mohamed Yaaseen
>     What is in the device arguments for the normal USRP block? Are
>     they the same as the device3 block?  Did you leave the device3
>     block in your
>       non-RFNOC flow-graph?
>
>


--------------060300020101030703020802
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/03/2020 07:45 PM, Mohamed Yaaseen
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAN-A3_v1DaveR+8+iAD6qhLpcTkyLxXiEf5_4aLgBqEXx1ZTHw@mail.gmail.com"
      type="cite">
      <div dir="ltr">I have created a new flow graph for the non-RFNoC ,
        one without any device3 block. 
        <div>in the device parameter of the usrp source I am using
          "addr0=192.168.30.2, addr1=192.168.40.2"  this string </div>
        <div><br>
        </div>
        <div>should I have to use "type=x300" ?</div>
      </div>
    </blockquote>
    Yes. Since simply specifying an IP address isn't enough to
    unambiguously identify the device type, AFAIR, although from your
    previous log,<br>
      it looks like it figured it out.<br>
    <br>
    Also, when this is happening, can you ping those addresses, outside
    of any Gnu Radio or UHD application, just can you ping them as<br>
      normal IP devices?<br>
    <br>
    Also, I've copied usrp-users, where this conversation should
    probably be moved.<br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CAN-A3_v1DaveR+8+iAD6qhLpcTkyLxXiEf5_4aLgBqEXx1ZTHw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
              <div dir="ltr">
                <div dir="ltr">
                  <div dir="ltr">
                    <div dir="ltr">regards,
                      <div>Mohamed Yaaseen</div>
                      <div><br>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, 4 Jun 2020 at 01:04,
          Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 06/03/2020 05:27 PM, Mohamed Yaaseen wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>Hello Guys,</div>
                <div>    I am using usrp x310 with default XG image. I
                  have also setup the RFNoC platform in GNURadio with
                  gr-ettus.<br>
                </div>
                <div>RFNoC ddc example using RFNoC blocks works
                  perfectly with 100MHz of bandwidth. But when I go back
                  to using normal usrp source block which is a normal
                  gr-uhd block, it throws the following error.</div>
                <div><br>
                </div>
                <div><br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>[INFO] [UHD] linux; GNU C++ version 9.3.0;
                    Boost_107100; UHD_3.15.0.0-16-ga3ece4f2<br>
                    [INFO] [X300] X300 initialization sequence...<br>
                    [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                    [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [INFO] [0/DmaFIFO_0] Initializing block control (NOC
                    ID: 0xF1F0D00000000000)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1296
                    MB/s)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319
                    MB/s)<br>
                    [INFO] [0/Radio_0] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [0/Radio_1] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [0/DDC_0] Initializing block control (NOC ID:
                    0xDDC0000000000000)<br>
                    [INFO] [0/DDC_1] Initializing block control (NOC ID:
                    0xDDC0000000000000)<br>
                    [INFO] [0/DUC_0] Initializing block control (NOC ID:
                    0xD0C0000000000000)<br>
                    [INFO] [0/DUC_1] Initializing block control (NOC ID:
                    0xD0C0000000000000)<br>
                    terminate called after throwing an instance of
                    'uhd::io_error'<br>
                      what():  EnvironmentError: IOError: Block ctrl
                    (CE_00_Port_30) no response packet - AssertionError:
                    bool(buff)<br>
                      in uint64_t
                    ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool,
                    double) [with uhd::endianness_t _endianness =
                    uhd::ENDIANNESS_BIG; uint64_t = long unsigned int]<br>
                      at
                    /home/ya-seen/workspace/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151</div>
                </blockquote>
                <div><br>
                </div>
                <div><br>
                </div>
                <div>what is this issue ? what am I doing wrong here ?
                  Help, suggestions highly appreciated<br>
                </div>
                <div><br>
                </div>
                <div>thanks in advance !!<br>
                </div>
                <div><br>
                </div>
                <div>
                  <div>
                    <div dir="ltr">
                      <div dir="ltr">
                        <div>
                          <div dir="ltr">
                            <div>
                              <div dir="ltr">
                                <div>
                                  <div dir="ltr">Regards,
                                    <div>Mohamed Yaaseen</div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
            What is in the device arguments for the normal USRP block? 
            Are they the same as the device3 block?  Did you leave the
            device3 block in your<br>
              non-RFNOC flow-graph?<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060300020101030703020802--


--===============5620532241965758399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5620532241965758399==--

