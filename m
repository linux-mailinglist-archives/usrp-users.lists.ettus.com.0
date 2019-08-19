Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 418B09233B
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2019 14:16:00 +0200 (CEST)
Received: from [::1] (port=37790 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hzgZp-0008CB-7V; Mon, 19 Aug 2019 08:15:57 -0400
Received: from www.itsystems.it ([62.94.30.103]:36064 helo=mx1.itsystems.it)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1hzgZh-0007eO-PB
 for usrp-users@lists.ettus.com; Mon, 19 Aug 2019 08:15:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O5Ce6ASn+zDyHGB5VefLomP1QWUpxTApzMuDU5Pb4Do=; b=uh6sXMlnm9fG9TMcP8fu2QxkSW
 Pih6vvfekm6uzeGFMeV+c6VkWDJ633Tur6uZR4VFsjesyaa8vxxm0Vfow42pB6k2UVW36xHNZf0pA
 ohWXbmVvhhS46BJNb/dCwwT2GoM/c2E3ytIkNrt81A14YHZY/lN1fbP+ZAPjvLVfShgI=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1hzgY7-0003kK-C5
 for usrp-users@lists.ettus.com; Mon, 19 Aug 2019 12:14:12 +0000
To: usrp-users@lists.ettus.com
References: <1754624003.3660157.1565753634913.ref@mail.yahoo.com>
 <1754624003.3660157.1565753634913@mail.yahoo.com>
Openpgp: preference=signencrypt
Message-ID: <6e5fe531-3e98-d340-2291-fcb433ba4b5f@itsystems.it>
Date: Mon, 19 Aug 2019 14:15:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1754624003.3660157.1565753634913@mail.yahoo.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello to all the mailing list users. I had exactly the same
 problem with the X310 and libuhd 3.14. Let me explain a bit more. I've my
 experimental project (with custom rfnoc block) running perfectly using the
 libuhd 3.10.3 version. We keep this experiment about 30 days up and running
 without proble [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 HTML_MESSAGE           BODY: HTML included in message
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
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
Content-Type: multipart/mixed; boundary="===============1791317293449941317=="
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
--===============1791317293449941317==
Content-Type: multipart/alternative;
 boundary="------------591D34D9A32FC649ED4BA02C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------591D34D9A32FC649ED4BA02C
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello to all the mailing list users.
I had exactly the same problem with the X310 and libuhd 3.14.

Let me explain a bit more. I've my experimental project (with custom
rfnoc block) running perfectly using the libuhd 3.10.3 version.
We keep this experiment about 30 days up and running without problems.
Now, because we planning to experiment also with the N310 I recompiled
my block and my software using the libuhd 3.14.0 version... and here the
problems started!

Sometimes the system bricks when  my application exit (the problem is
when I try to stop the streaming), some times bricks at runtime.
The error is exactly the same reported below and it never happended with
libuhd 3.10.3.

I think this could be a very subtle bug inside the rfnoc logic. In fact,
as far as I can understand, this error happens because there is no
answer to a fake command sent by the libuhd. I also tried to debug the
fpga design using ILA and, to be plain, I found differences between the
signlas beahviour of the AXI signals arriving to my block from the rfnoc.

I monitored the signal coming from the rfnoc to my noc_block when my
sotfware try to stop the stream, it seems to me that the i_tvalid signal
from the rfnoc to my block remains high with libuhd 3.14, while it goes
down with libuhd 3.10.3.

O.S.: ubuntu 18.04 64-bit

At present I'm still unable to deeply understand the problem and to
solve it.

Any help is apreciated.

Have a good day



On 14/08/19 05:33, Tellrell White via USRP-users wrote:
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
> regular, up to date image? o, 
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
>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> uhd::endianness_t _endianness = (uhd::endianness_t)0u]
>   at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block
> ctrl (CE_00_Port_30) no response packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t
> = long unsigned int]
>   at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
> Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no
> response packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t
> = long unsigned int]
>   at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> Regards
> Tellrell 
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



--------------591D34D9A32FC649ED4BA02C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Hello to all the mailing list users.</div>
    <div class="moz-cite-prefix">I had exactly the same problem with the
      X310 and libuhd 3.14.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Let me explain a bit more. I've my
      experimental project (with custom rfnoc block) running perfectly
      using the libuhd 3.10.3 version.</div>
    <div class="moz-cite-prefix">We keep this experiment about 30 days
      up and running without problems. Now, because we planning to
      experiment also with the N310 I recompiled</div>
    <div class="moz-cite-prefix"> my block and my software using the
      libuhd 3.14.0 version... and here the problems started!</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Sometimes the system bricks when  my
      application exit (the problem is when I try to stop the
      streaming), some times bricks at runtime.</div>
    <div class="moz-cite-prefix">The error is exactly the same reported
      below and it never happended with libuhd 3.10.3.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">I think this could be a very subtle bug
      inside the rfnoc logic. In fact, as far as I can understand, this
      error happens because there is no answer to a fake command sent by
      the libuhd. I also tried to debug the fpga design using ILA and,
      to be plain, I found differences between the signlas beahviour of
      the AXI signals arriving to my block from the rfnoc.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">I monitored the signal coming from the
      rfnoc to my noc_block when my sotfware try to stop the stream, it
      seems to me that the i_tvalid signal from the rfnoc to my block
      remains high with libuhd 3.14, while it goes down with libuhd
      3.10.3.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">O.S.: ubuntu 18.04 64-bit</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">At present I'm still unable to deeply
      understand the problem and to solve it.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Any help is apreciated.<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Have a good day<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 14/08/19 05:33, Tellrell White via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1754624003.3660157.1565753634913@mail.yahoo.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
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
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------591D34D9A32FC649ED4BA02C--


--===============1791317293449941317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1791317293449941317==--

