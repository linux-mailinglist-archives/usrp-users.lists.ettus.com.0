Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE7037F5F8
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 12:52:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A623383E47
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 06:52:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="WIVuzr0k";
	dkim-atps=neutral
Received: from www.itsystems.it (mx1.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 6533F383E45
	for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 06:51:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XjO03lJE+d9FKLJ8qfNlNbqTRGEQ27gHxLw27Q1k76w=; b=WIVuzr0kHraqz9uI7IYRDyqHf9
	eYRKD8w4twBumPZVPQ9XLr+Jz8C1DId8vpP9drGzP69PvDUAgcZqK2v5/L04P91SbfHT5GiKM1YR9
	3QK830x5pra6Bm8fQrzwnK9SqnWhCUfQHfX28TMYiptcz+ExoUUQ1GzW9h2p9la6JFEk=;
Received: from 77-32-2-68.dyn.eolo.it ([77.32.2.68] helo=[192.168.178.108])
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1lh8wU-0000Xc-9c
	for usrp-users@lists.ettus.com; Thu, 13 May 2021 10:51:53 +0000
To: usrp-users@lists.ettus.com
References: <CAG16vQUkU7wG9sYv2Kv8_Z1SHZXOWWvEp47jPcaDusXZ7dWFBw@mail.gmail.com>
 <CAG16vQUseZrj72P9vTmgo+ktnNg0RyBX5hf9pN07JeVB0DsPyQ@mail.gmail.com>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <2db08237-f2db-a836-6298-fb294ca9038d@itsystems.it>
Date: Thu, 13 May 2021 12:52:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAG16vQUseZrj72P9vTmgo+ktnNg0RyBX5hf9pN07JeVB0DsPyQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "v-mx.virt.itsystems.it",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Maria, glad to be helpfull, However I have to suggest you
    to review what I said, and what I will to say, in a thorough manner because
    all I know is due to experiments and study of the code, so it c [...]
 Content analysis details:   (-2.9 points, 5.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 TVD_RCVD_IP            Message was received from an IP address
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
Message-ID-Hash: A5YLKCBTUONF4K6JTMYJ6TJYCOTLOAR4
X-Message-ID-Hash: A5YLKCBTUONF4K6JTMYJ6TJYCOTLOAR4
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Size throughput in RFNoC (FPGA side)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A5YLKCBTUONF4K6JTMYJ6TJYCOTLOAR4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2637684011522969006=="

This is a multi-part message in MIME format.
--===============2637684011522969006==
Content-Type: multipart/alternative;
 boundary="------------8EE0CB27625B31CA7EE36A2A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8EE0CB27625B31CA7EE36A2A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Maria,
glad to be helpfull, However I have to suggest you to review what I
said, and what I will to say, in a thorough manner because all I know is
due to experiments and study of the code, so it can be simply wrong or
inaccurate.

From the x300.v file I'm reading (version UHD-3.15) the radio_clock is
200MHz and, probably, it is used in order to read data from the ADCs
that are capable of 200Msps on a X310 (so between ADC and fpga the max
throuput should 200Msps).

The bus_clk should be 187.5 MHz, however in order to compare the
throughput with the one from ce_clk you must take into account that in
the bus_clk domain data are transferred at 64-bit word, while in the
ce_clk domain words are 32-bit in size (a sample is 32-bit).

Best

Paolo

On 5/13/21 12:12 PM, Maria Mu=C3=B1oz wrote:
> Hi Paolo,
>
> Thanks for the quick answer.
>
> I'm sorry I forgot to say that I'm using USRP E320, but I can apply
> what you explain for the X300. Thanks again!
>
> Looking at the X300.v file, I see that there are two other generated
> clocks, one called bus_clk which is generated with the same clock
> reference as ce_clk (125 MHz), and another one called radio_clk, which
> seems to be referenced by a 120 MHZ clock (not sure exactly about
> this, but seems to be something like that from the schematics).
>
> I see that radio_clk goes to the radio_block and bus_clk is related to
> the Noc shell. Does this mean that my throughput would be also
> affected by those clocks too? Maybe the maximum theoretical throughput
> could be calculated using the lowest clock of them(which would be
> bus_clk in the X300 case)?
>
> Kind Regards,
>
> Maria
>
> El jue, 13 may 2021 a las 10:28, Maria Mu=C3=B1oz (<mamuki92@gmail.com
> <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
>
>     Hi all,
>
>     I'm=C2=A0trying to size/calculate the throughput between RFNoC bloc=
ks
>     from the FPGA side (not between arm/host pc and RFNoC block, which
>     I think is the one the interface measure when performing
>     uhd_usrp_probe). Is there a process or an existing tool to measure
>     this throughput?
>
>     Kind Regards,
>
>     Maria=C2=A0
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com



--------------8EE0CB27625B31CA7EE36A2A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">Hi Maria,</div>
    <div class=3D"moz-cite-prefix">glad to be helpfull, However I have to
      suggest you to review what I said, and what I will to say, in a
      thorough manner because all I know is due to experiments and study
      of the code, so it can be simply wrong or inaccurate.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">From the x300.v file I'm reading
      (version UHD-3.15) the radio_clock is 200MHz and, probably, it is
      used in order to read data from the ADCs that are capable of
      200Msps on a X310 (so between ADC and fpga the max throuput should
      200Msps).</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">The bus_clk should be 187.5 MHz,
      however in order to compare the throughput with the one from
      ce_clk you must take into account that in the bus_clk domain data
      are transferred at 64-bit word, while in the ce_clk domain words
      are 32-bit in size (a sample is 32-bit).<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Best</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Paolo<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 5/13/21 12:12 PM, Maria Mu=C3=B1oz =
wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAG16vQUseZrj72P9vTmgo+ktnNg0RyBX5hf9pN07JeVB0DsPyQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><span
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">Hi
          Paolo,</span><br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <span
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">Thanks
          for the quick answer.</span><br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <span
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">I'm
          sorry I forgot to say that I'm using USRP E320, but I can
          apply what you explain for the X300. Thanks again!</span><br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <span
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">Looking
          at the X300.v file, I see that there are two other generated
          clocks, one called bus_clk which is generated with the same
          clock reference as ce_clk (125 MHz), and another one called
          radio_clk, which seems to be referenced by a 120 MHZ clock
          (not sure exactly about this, but seems to be something like
          that from the schematics).</span><br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <span
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">I
          see that radio_clk goes to the radio_block and bus_clk is
          related to the Noc shell. Does this mean that my throughput
          would be also affected by those clocks too? Maybe the maximum
          theoretical throughput could be calculated using the lowest
          clock of them(which would be bus_clk in the X300 case)?</span><=
br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <span
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">Kind
          Regards,</span><br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <br
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">
        <span
style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">Maria</span><br>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El jue, 13 may 2021 a las
          10:28, Maria Mu=C3=B1oz (&lt;<a href=3D"mailto:mamuki92@gmail.c=
om"
            moz-do-not-send=3D"true">mamuki92@gmail.com</a>&gt;) escribi=C3=
=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hi all,<br>
            <div><br>
            </div>
            <div>I'm=C2=A0trying to size/calculate the throughput between
              RFNoC blocks from the FPGA side (not between arm/host pc
              and RFNoC block, which I think is the one the interface
              measure when performing uhd_usrp_probe). Is there a
              process or an existing tool to measure this throughput?</di=
v>
            <div><br>
            </div>
            <div>Kind Regards,</div>
            <div><br>
            </div>
            <div>Maria=C2=A0</div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------8EE0CB27625B31CA7EE36A2A--

--===============2637684011522969006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2637684011522969006==--
