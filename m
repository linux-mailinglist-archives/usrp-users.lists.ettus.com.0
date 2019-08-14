Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A2F8C9EB
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 05:41:55 +0200 (CEST)
Received: from [::1] (port=42198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxkAb-0004pb-Eh; Tue, 13 Aug 2019 23:41:53 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:35265)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hxkAY-0004kB-Ap
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 23:41:50 -0400
Received: by mail-qt1-f182.google.com with SMTP id u34so9444901qte.2
 for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2019 20:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=9Oi+XeLY6hpzY65PDuKAsz+JZWqrmz7oDgil9zbZZuU=;
 b=ifedsTs6+yrkrWzbfXflTbiBOlZW8/ExyO3sTq7ivMQb3EQllCXzi6WTksJ/f9UX9L
 f32Y6k9mTleaPTK6yNumFKFKwtsuwMTXEPiq5Un7B/dTgr8vMKhADcp93KtvpwdqUwMa
 ZPy4Nhy6m4/5eExDCUSoLh5HGRO63SPFLUj75RVSmlIA0wYWOo06E2sTwfHwIimRZhrU
 JHBDXuHHncXMIXdFbtUrCPByK6RmCBZxr9ETxd92y/yzn5mfdroNCgOzoeHwu8qYVKG2
 qyKD1nfTP2aznrDHgdakvPRwObf1wLnSWxwIm/YM1beHjA1jJFDncAh870+IipqEzJyW
 X7+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=9Oi+XeLY6hpzY65PDuKAsz+JZWqrmz7oDgil9zbZZuU=;
 b=T3NWusEPmpOzXCpdxAri7ui7VVwNRf/Bjtv7t11Q0i9DIyIb5q4Y6yyJpMRLfCfvRA
 2WOfzY+RIMMOW62S29jvBNeOIt/gvHdZtwymMsO9Sk/6P0bm6wpoDRGjiMchwKPs0Opo
 kQh0rwHLVBfO+fHnC1tSlryfp/VmuMGqjzNXqzlFOEzcw3pVSCHVDF5wY4o6K9wwXgt7
 oDt6zyrVbLLqHY9wIwMt8GqUghprj2DJirq7XvYpBLXVYs14TpAeOQ24RPOmIKvfWUpF
 Em9ZuCUEis8N7/OMXypFEnolFr2uTvSCgMbfzdZMVLr+3PQM5YNAg613ZxAMmP1Ck7OY
 ANhw==
X-Gm-Message-State: APjAAAU0XZRUNFx8sM4TndJmCscmZGEEV1TRxJeL5vK/XCnRxB0IJmMS
 I4cgHCsbQPcdNNIXXqL205HxgdvS
X-Google-Smtp-Source: APXvYqyXUeF6kazJUj/aqLa+Scto5QmnRdwJjOKgS/yr0mgxy3vBRVAlvpbWM+EChmRGuKm208wmyQ==
X-Received: by 2002:aed:3a03:: with SMTP id n3mr35099270qte.85.1565754069646; 
 Tue, 13 Aug 2019 20:41:09 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id z1sm55844541qkg.103.2019.08.13.20.41.09
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 20:41:09 -0700 (PDT)
Message-ID: <5D5382D4.60007@gmail.com>
Date: Tue, 13 Aug 2019 23:41:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1754624003.3660157.1565753634913.ref@mail.yahoo.com>
 <1754624003.3660157.1565753634913@mail.yahoo.com>
In-Reply-To: <1754624003.3660157.1565753634913@mail.yahoo.com>
Subject: Re: [USRP-users] UHD Error with X310
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
Content-Type: multipart/mixed; boundary="===============1625610340791477117=="
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
--===============1625610340791477117==
Content-Type: multipart/alternative;
 boundary="------------060108010401010206070202"

This is a multi-part message in MIME format.
--------------060108010401010206070202
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/13/2019 11:33 PM, Tellrell White via USRP-users wrote:
> Hello All
>
> I seem to be receiving an a uhd error that is causing flowgraphs to 
> stop when trying to send and receive using the USRP X310. Now, I'm 
> receiving the same error shown below when running the "uhd_usrp_probe" 
> command. Not quite sure where this error is coming from but I see 
> rfnoc in the last line of the printout below which leads me to believe 
> that rfnoc could have something to do with the error. However, I'm not 
> working with the rfnoc branch of uhd. I believe someone else who was 
> using the device before me may have been using rfnoc. So, if this is 
> indeed the issue, isthere a way to rid the fpga of rfnoc and use a 
> regular, up to date image? o,
>
> I'm working inside of a VM running Ubuntu 16.04 LTS. I'm using 
> UHD_3.15.0.git-34-g3c8ed1b5 as shown below, with GNU Radio 3.7.7.
>
> mitll@mitll-virtual-machine:~$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; 
> UHD_3.15.0.git-34-g3c8ed1b5
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
> Target sock buff size: 24266666 bytes.
> Actual sock buff size: 212992 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.rmem_max=24266666
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 24266666 bytes.
> Actual sock buff size: 212992 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=24266666
> [WARNING] [UDP] The current recv_buff_size of 212992 is less than the 
> minimum recommended size of 816000 and may result in dropped packets 
> on some NICs
> [ERROR] [UHD] Exception caught in safe-call.
>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with 
> uhd::endianness_t _endianness = (uhd::endianness_t)0u]
>   at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block 
> ctrl (CE_00_Port_30) no response packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) 
> [with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t 
> = long unsigned int]
>   at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
> Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no 
> response packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) 
> [with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t 
> = long unsigned int]
>   at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> Regards
> Tellrell
>
>
Use:

uhd_image_loader --args type=x300

Assuming that you have already downloaded matching image files with:

sudo uhd_images_downloader


--------------060108010401010206070202
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/13/2019 11:33 PM, Tellrell White
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:1754624003.3660157.1565753634913@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:13px;">
        <div>
          <div class="ydp23622931I_52qC ydp23622931D_FY
            ydp23622931W_6D6F" style="width: 100%; text-align: left;
            color: rgb(29, 34, 40); text-transform: none; text-indent:
            0px; letter-spacing: normal; font-family: Helvetica
            Neue,Segoe UI,Helvetica,Arial,Lucida Grande,sans-serif;
            font-size: 13px; font-style: normal; font-variant: normal;
            font-weight: 400; text-decoration: none; word-spacing: 0px;
            display: table; white-space: normal; orphans: 2;
            background-color: rgb(255, 255, 255);"
            data-test-id="message-view-body">
            <div class="ydp23622931msg-body ydp23622931P_wpofO
              ydp23622931iy_A ydp23622931mq_AS" style="padding: 2px 0px
              0px; line-height: normal; font-family: Helvetica
              Neue,Helvetica,Arial,sans-serif;"
              data-test-id="message-view-body-content">
              <div class="ydp23622931jb_0 ydp23622931X_6MGW
                ydp23622931N_6Fd5" style="padding-bottom: 0px;
                padding-left: 24px; padding-right: 16px;">
                <div>
                  <div id="ydp23622931yiv3276655677">
                    <div>
                      <div
                        class="ydp23622931yiv3276655677ydpc0dc2ac8yahoo-style-wrap"
                        style="font-family: Helvetica
                        Neue,Helvetica,Arial,sans-serif; font-size:
                        13px;">
                        <div dir="ltr">Hello All</div>
                        <div dir="ltr"><br>
                        </div>
                        <div dir="ltr">I seem to be receiving an a uhd
                          error that is causing flowgraphs to stop when
                          trying to send and receive using the USRP
                          X310. Now, I'm receiving the same error shown
                          below when running the "uhd_usrp_probe"
                          command. Not quite sure where this error is
                          coming from but I see rfnoc in the last line
                          of the printout below which leads me to
                          believe that rfnoc could have something to do
                          with the error. However, I'm not working with
                          the rfnoc branch of uhd. I believe someone
                          else who was using the device before me may
                          have been using rfnoc. S<font
                            style="background-color: rgb(255, 255,
                            255);">o, if this is indeed the issue, is<span
                              style="color: rgb(0, 0, 0); display:
                              inline; float: none; font-family:
                              Helvetica Neue,Helvetica,Arial,sans-serif;
                              font-size: 13px; font-style: normal;
                              font-variant: normal; font-weight: 400;
                              letter-spacing: normal; orphans: 2;
                              text-align: left; text-decoration: none;
                              text-indent: 0px; text-transform: none;
                              white-space: normal; word-spacing: 0px;">
                              there a way to rid the fpga of rfnoc and
                              use a regular, up to date image? </span></font>o, </div>
                        <div dir="ltr"><br>
                        </div>
                        <div dir="ltr">I'm working inside of a VM
                          running Ubuntu 16.04 LTS. I'm using <span><span
                              style="background-color: rgb(255, 255,
                              255); color: rgb(0, 0, 0); display:
                              inline; float: none; font-family:
                              Helvetica Neue,Helvetica,Arial,sans-serif;
                              font-size: 13px; font-style: normal;
                              font-variant: normal; font-weight: 400;
                              letter-spacing: normal; orphans: 2;
                              text-align: left; text-decoration: none;
                              text-indent: 0px; text-transform: none;
                              white-space: normal; word-spacing: 0px;">UHD_3.15.0.git-34-g3c8ed1b5
                              as shown below, with GNU Radio 3.7.7. </span></span></div>
                        <div dir="ltr"><br>
                        </div>
                        <div dir="ltr">mitll@mitll-virtual-machine:~$
                          uhd_usrp_probe <br>
                          [INFO] [UHD] linux; GNU C++ version 5.4.0
                          20160609; Boost_105800;
                          UHD_3.15.0.git-34-g3c8ed1b5<br>
                          [INFO] [X300] X300 initialization sequence...<br>
                          [INFO] [X300] Maximum frame size: 1472 bytes.<br>
                          [INFO] [X300] Radio 1x clock: 200 MHz<br>
                          [WARNING] [UDP] The recv buffer could not be
                          resized sufficiently.<br>
                          Target sock buff size: 24266666 bytes.<br>
                          Actual sock buff size: 212992 bytes.<br>
                          See the transport application notes on buffer
                          resizing.<br>
                          Please run: sudo sysctl -w
                          net.core.rmem_max=24266666<br>
                          [WARNING] [UDP] The send buffer could not be
                          resized sufficiently.<br>
                          Target sock buff size: 24266666 bytes.<br>
                          Actual sock buff size: 212992 bytes.<br>
                          See the transport application notes on buffer
                          resizing.<br>
                          Please run: sudo sysctl -w
                          net.core.wmem_max=24266666<br>
                          [WARNING] [UDP] The current recv_buff_size of
                          212992 is less than the minimum recommended
                          size of 816000 and may result in dropped
                          packets on some NICs<br>
                          [ERROR] [UHD] Exception caught in safe-call.<br>
                            in
                          ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl()
                          [with uhd::endianness_t _endianness =
                          (uhd::endianness_t)0u]<br>
                            at
                          /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>
                          this-&gt;send_cmd_pkt(0, 0, true); -&gt;
                          EnvironmentError: IOError: Block ctrl
                          (CE_00_Port_30) no response packet -
                          AssertionError: bool(buff)<br>
                            in uint64_t
                          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool,
                          double) [with uhd::endianness_t _endianness =
                          (uhd::endianness_t)0u; uint64_t = long
                          unsigned int]<br>
                            at
                          /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142</div>
                        <div>Error: EnvironmentError: IOError: Block
                          ctrl (CE_00_Port_30) no response packet -
                          AssertionError: bool(buff)<br>
                            in uint64_t
                          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool,
                          double) [with uhd::endianness_t _endianness =
                          (uhd::endianness_t)0u; uint64_t = long
                          unsigned int]<br>
                            at
                          /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142</div>
                        <div><br>
                        </div>
                        <div dir="ltr">Regards<br>
                        </div>
                        <div dir="ltr">Tellrell </div>
                        <div><br>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="ydp23622931jb_0 ydp23622931X_6MGW
              ydp23622931N_6Fd5" style="padding-bottom: 0px;
              padding-left: 24px; padding-right: 16px;"><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Use:<br>
    <br>
    uhd_image_loader --args type=x300<br>
    <br>
    Assuming that you have already downloaded matching image files with:<br>
    <br>
    sudo uhd_images_downloader<br>
    <br>
  </body>
</html>

--------------060108010401010206070202--


--===============1625610340791477117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1625610340791477117==--

