Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B0C1F7E7F
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 23:50:36 +0200 (CEST)
Received: from [::1] (port=51574 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjrZH-0000yF-3R; Fri, 12 Jun 2020 17:50:31 -0400
Received: from resqmta-po-05v.sys.comcast.net ([96.114.154.164]:54836)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1jjrZD-0000u1-IY
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 17:50:27 -0400
Received: from resomta-po-20v.sys.comcast.net ([96.114.154.244])
 by resqmta-po-05v.sys.comcast.net with ESMTP
 id jq9Lje18CmIRpjrYYjQCpz; Fri, 12 Jun 2020 21:49:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1591998586;
 bh=FSL0j5uXLGNzqso2DM7pG8sHtYN2IV1hrPFqp5ShWeg=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=KyxNRdvrnci2f5gzgYuhkNKOH1em02DRooosWMAjUPtWhvjNrqcYyKe040WeynRtD
 pTsIAsprOMdoCgSFHhPJMIUoqVhrz5nOwkbPyoIpCNhrLB0ugokftcKfO6pqYIYD9n
 /LZJIlhIZsv+soMRjt3KxC4jf3niJUkUQmFiG1c5mOQkFaqcG5B8aQbT4p1ihF/E0l
 F1eFSWj/Vgi+udL3YMud/zyayNbRyD3c0CQDnYQslNOYApbnuBp4fV2dfC4NOiLMIN
 AFBZCnllK2p3sKKhYJpxjUz9s1xPfQwccs1F6uxtepvazuenXuleJhh5G8xob1gayf
 iUFMQ64PtX5Dg==
Received: from [IPv6:2601:647:4200:ea30:b42f:d83f:284a:f897]
 ([IPv6:2601:647:4200:ea30:b42f:d83f:284a:f897])
 by resomta-po-20v.sys.comcast.net with ESMTPSA
 id jrYXj1ZdRgeorjrYYjWq6q; Fri, 12 Jun 2020 21:49:46 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CAKyaCM64SK=LYavuWjdfM_XuPDb+LbuDu7R2=cuCGYqj03p6ew@mail.gmail.com>
Message-ID: <584010aa-2013-efbf-835a-4d0366c5f77d@comcast.net>
Date: Fri, 12 Jun 2020 14:49:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAKyaCM64SK=LYavuWjdfM_XuPDb+LbuDu7R2=cuCGYqj03p6ew@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] [USRP-B200] Transmitting and Receiving with two
 boards B200 using MATLAB
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
Content-Type: multipart/mixed; boundary="===============5903194458223794214=="
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
--===============5903194458223794214==
Content-Type: multipart/alternative;
 boundary="------------CF57E1D4927F10A4F5C08B2B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CF57E1D4927F10A4F5C08B2B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

60 dB is a lot of attenuation. You can remove *one* of the 30 dB 
attenuators. For gain settings, 30 is good for RX and 50 to 60 is good 
for TX.

Ron

On 6/12/20 14:14, Thuc TheGifted via USRP-users wrote:
> Hi everyone,
>
> I am new to this USRP B200 board. I currently have two boards and I 
> want to connect the Tx port of one board to the Rx port of another 
> using a SMA cable to visualize the communication.
>
> So I start with something available online here
> https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-transmitter-with-usrp-r-hardware.html 
>
> and
> https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-receiver-with-usrp-r-hardware.html 
>
>
> Basically, my hardware connection is
> Computer_1 + B200_1(Tx port) + 30 dB attenuator + SMA cable + 30 dB 
> attenuator + B200_2(Rx port) + Computer_2
>
> And I run the transmitter code on the computer_1 and run the receiver 
> code on the computer_2. The transmitter light and the receiver light 
> both turns on, so I think they are doing something.
>
> However the result I get on my receiver end on computer_2 is not good. 
> They just look like noise.
>
> I think because I use a different kind of board, so I need to modify 
> the gain parameters in the code. But I have no idea about how to make 
> it correctly.
>
> I hope someone with more experience with this board can show me how to 
> do it right.
> Could you please help me on this.
> Thank you.
>
> -Ves
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------CF57E1D4927F10A4F5C08B2B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>60 dB is a lot of attenuation. You can remove <b>one</b> of the
      30 dB attenuators. For gain settings, 30 is good for RX and 50 to
      60 is good for TX.</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 6/12/20 14:14, Thuc TheGifted via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKyaCM64SK=LYavuWjdfM_XuPDb+LbuDu7R2=cuCGYqj03p6ew@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hi everyone,
        <div><br>
        </div>
        <div>I am new to this USRP B200 board. I currently have two
          boards and I want to connect the Tx port of one board to the
          Rx port of another using a SMA cable to visualize the
          communication.</div>
        <div><br>
        </div>
        <div>So I start with something available online here</div>
        <div><a
href="https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-transmitter-with-usrp-r-hardware.html"
            moz-do-not-send="true">https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-transmitter-with-usrp-r-hardware.html</a> </div>
        <div>and <br>
        </div>
        <div><a
href="https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-receiver-with-usrp-r-hardware.html"
            moz-do-not-send="true">https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-receiver-with-usrp-r-hardware.html</a>  <br>
        </div>
        <div><br>
        </div>
        <div>Basically, my hardware connection is</div>
        <div>Computer_1 + B200_1(Tx port) + 30 dB attenuator + SMA
          cable + 30 dB attenuator + B200_2(Rx port) + Computer_2</div>
        <div><br>
        </div>
        <div>And I run the transmitter code on the computer_1 and run
          the receiver code on the computer_2. The transmitter light and
          the receiver light both turns on, so I think they are doing
          something.</div>
        <div><br>
        </div>
        <div>However the result I get on my receiver end on computer_2
          is not good. They just look like noise.</div>
        <div><br>
        </div>
        <div>I think because I use a different kind of board, so I need
          to modify the gain parameters in the code. But I have no idea
          about how to make it correctly.</div>
        <div><br>
        </div>
        <div>I hope someone with more experience with this board can
          show me how to do it right.</div>
        <div>Could you please help me on this.</div>
        <div>Thank you.</div>
        <div><br>
        </div>
        <div>-Ves</div>
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

--------------CF57E1D4927F10A4F5C08B2B--


--===============5903194458223794214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5903194458223794214==--

