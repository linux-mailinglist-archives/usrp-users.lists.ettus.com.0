Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA602B9161
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 12:52:45 +0100 (CET)
Received: from [::1] (port=36630 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfiUT-00070Y-7h; Thu, 19 Nov 2020 06:52:41 -0500
Received: from resdmta-po-01v.sys.comcast.net ([96.114.154.209]:38101)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1kfiUP-0006rZ-V9
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 06:52:38 -0500
Received: from resqmta-po-09v.sys.comcast.net ([96.114.154.168])
 by resdmta-po-01v.sys.comcast.net with ESMTP
 id fhddkamHXdsN5fiTlk4JgW; Thu, 19 Nov 2020 11:51:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1605786717;
 bh=K3bCC9qK/sWCbyyLiVTa+US/ZD99kyDcp1GRUgwxNpc=;
 h=Received:Received:Received:Subject:To:From:Message-ID:Date:
 MIME-Version:Content-Type;
 b=37oHLx3hLPguSqmHe75uFGHCtsg1VgGZm2k4+51Z9wVGwTFcpglmjcK0h7y62yQ8I
 TUn6/XRa2xl5Msth5BeXAvdFIIrfKLLPunPMTgjjF/mfHe4z4EeqzxAkqKleX19ACQ
 FoHgmgozZushe7diILTX8eL1Or4ZXKY83He7rXUuGBTM8S+gM1kAMdyR4Ew6xH8Pme
 /PohxvB/83aMQLFVPbC9FMvSuJTAKb1qRntgWLcBuY0UJrbCymy0ll1xlpTfqhsotF
 2tMywMaELC+PksUKD1kxV4ge0pRmHFsU46N7rBIvC5ljt35Ui2xFrcPH9Ar0SNUNxk
 vyMAfKP/yYIUQ==
Received: from resomta-po-04v.sys.comcast.net ([96.114.154.228])
 by resqmta-po-09v.sys.comcast.net with ESMTP
 id fiSEk1zWXZ5GTfiTkkLk6P; Thu, 19 Nov 2020 11:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1605786716;
 bh=K3bCC9qK/sWCbyyLiVTa+US/ZD99kyDcp1GRUgwxNpc=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=H+ye37+JDOUv3Ysb8sMy6l4OYAO1iNEm0HtN1iH1gq8ftAWJ75rSof/9TYPHwgvWZ
 SFaVnzjI3NxQfsk2ssuQxJ6g63gzd7HtgXikSvfUK/oUpk6VQ9AiIwMaDznzQPwdGA
 amjVSzfm9XP+VvCmewDPFTXGtkadvDgO6Tl1p7Q6/qj6HWw+NAOfKfiK0FyQ4I7qy0
 O5zWJty79aw6g5hnbiSlY6IrjglH3jcelSTfHqL8Ve28r5q94OLcsllRiUEwUCNIhV
 YxbEPlZ/CdAT+swHxbL3D6er2QxVX2d5WzRfkpzjyaTHokyau/tK3ikjUueP3rIvPo
 QZXK2kvRz8qrg==
Received: from [IPv6:2601:647:4200:ea30:89a:154a:d7b0:610e]
 ([IPv6:2601:647:4200:ea30:89a:154a:d7b0:610e])
 by resomta-po-04v.sys.comcast.net with ESMTPSA
 id fiTkkdqqWVStyfiTkkukqI; Thu, 19 Nov 2020 11:51:56 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CA+1FM8pa+r2V98HZver=btdMVxoNCmrm0O4FXftszhruHLaT2w@mail.gmail.com>
 <5FB59610.5020902@gmail.com>
 <CA+1FM8rYrQ2ukQ39HbzrWw8JbNqSo8a4mCd++J95rTLFWfBGpg@mail.gmail.com>
Message-ID: <d34d64b6-f36b-664a-93e7-b4a5cd9d1601@comcast.net>
Date: Thu, 19 Nov 2020 03:51:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CA+1FM8rYrQ2ukQ39HbzrWw8JbNqSo8a4mCd++J95rTLFWfBGpg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Overflows at flowgraph start using gr-uhd
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============6430989264712601280=="
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
--===============6430989264712601280==
Content-Type: multipart/alternative;
 boundary="------------A7297AC46A027ACE0C4FFEBF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A7297AC46A027ACE0C4FFEBF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

The automatic setting of the master clock seems to be getting in the way 
after the PPS transition. Try explicitly setting the master clock.

"num_recv_frames=128,master_clock_rate=" + str(samp_rate*4)

Ron

On 11/19/20 03:33, Josh via USRP-users wrote:
> Marcus,
>
> This is naked hardware - B210 usb into a pretty beefy laptop running 
> Ubuntu 20.04, GNU Radio latest master (3.9)
> Even with num_recv_frames = 128, still getting "ODD" at startup of the 
> flowgraph
>
> Any other optimizations I should be tuning?  Getting no overruns in 
> the steady state, just at startup.
>
> Flowgraph is attached.
>
> Josh
>
> On Wed, Nov 18, 2020 at 4:46 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 11/18/2020 07:27 AM, Josh via USRP-users wrote:
>>     I'm seeing a difference in behavior between gr-uhd and plain uhd
>>     c++ api:
>>
>>     Setup:
>>     B210, 2 channels, 5MSPS, master_clock_rate 20MSPS, PPS sync
>>     Receive only flowgraph
>>
>>     With gr-uhd, there is always a "OOD" when the flowgraph first starts
>>
>>     But, if I replicate the setup in a simple compiled program using
>>     the uhd API with all the same settings, this never occurs.
>>
>>     So my question is - is the GR scheduler doing something at the
>>     beginning of the flowgraph that delays the work() calls and
>>     causes overflows, and are there settings I use to mitigate this? 
>>     My problem is that once these overflows occur, I can't trust my
>>     timing synchronization on the received samples (or have to do
>>     further calculations on the rx_time tags).
>>
>>     Thanks,
>>     Josh
>>
>>
>>     _______________________________________________
>>
>     Try specifying "num_recv_frames=128" in your device arguments.
>
>     Also, are you running this on naked hardware or through a VM?
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------A7297AC46A027ACE0C4FFEBF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>The automatic setting of the master clock seems to be getting in
      the way after the PPS transition. Try explicitly setting the
      master clock.<br>
    </p>
    <p>"num_recv_frames=128,master_clock_rate=" + str(samp_rate*4)</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 11/19/20 03:33, Josh via USRP-users
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+1FM8rYrQ2ukQ39HbzrWw8JbNqSo8a4mCd++J95rTLFWfBGpg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Marcus,</div>
        <div><br>
        </div>
        <div>This is naked hardware - B210 usb into a pretty beefy
          laptop running Ubuntu 20.04, GNU Radio latest master (3.9)<br>
        </div>
        <div>Even with num_recv_frames = 128, still getting "ODD" at
          startup of the flowgraph</div>
        <div><br>
        </div>
        <div>Any other optimizations I should be tuning?  Getting no
          overruns in the steady state, just at startup.</div>
        <div><br>
        </div>
        <div>Flowgraph is attached.</div>
        <div><br>
        </div>
        <div>Josh<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Nov 18, 2020 at 4:46
          PM Marcus D. Leech via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 11/18/2020 07:27 AM, Josh via USRP-users wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>I'm seeing a difference in behavior between gr-uhd
                  and plain uhd c++ api:</div>
                <div><br>
                </div>
                <div>Setup:</div>
                <div>B210, 2 channels, 5MSPS, master_clock_rate 20MSPS,
                  PPS sync<br>
                </div>
                <div>Receive only flowgraph</div>
                <div><br>
                </div>
                <div>With gr-uhd, there is always a "OOD" when the
                  flowgraph first starts</div>
                <div><br>
                </div>
                <div>But, if I replicate the setup in a simple compiled
                  program using the uhd API with all the same settings,
                  this never occurs.</div>
                <div><br>
                </div>
                <div>So my question is - is the GR scheduler doing
                  something at the beginning of the flowgraph that
                  delays the work() calls and causes overflows, and are
                  there settings I use to mitigate this?  My problem is
                  that once these overflows occur, I can't trust my
                  timing synchronization on the received samples (or
                  have to do further calculations on the rx_time tags).</div>
                <div><br>
                </div>
                <div>Thanks,</div>
                <div>Josh<br>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
              <br>
              <pre>_______________________________________________

</pre>
            </blockquote>
            Try specifying "num_recv_frames=128" in your device
            arguments.<br>
            <br>
            Also, are you running this on naked hardware or through a
            VM? <br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------A7297AC46A027ACE0C4FFEBF--


--===============6430989264712601280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6430989264712601280==--

