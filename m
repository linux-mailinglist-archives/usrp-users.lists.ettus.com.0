Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E36FB194325
	for <lists+usrp-users@lfdr.de>; Thu, 26 Mar 2020 16:25:58 +0100 (CET)
Received: from [::1] (port=40900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jHUOH-0004UQ-2E; Thu, 26 Mar 2020 11:25:53 -0400
Received: from mailout2n.rrzn.uni-hannover.de ([130.75.2.113]:43864)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <stolzenberg@iqo.uni-hannover.de>)
 id 1jHUOD-0004MP-9K
 for usrp-users@lists.ettus.com; Thu, 26 Mar 2020 11:25:49 -0400
Received: from [130.75.103.47] (unknown [130.75.103.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout2n.rrzn.uni-hannover.de (Postfix) with ESMTPSA id 831FF1F404;
 Thu, 26 Mar 2020 16:25:07 +0100 (CET)
To: Sam Reiter <sam.reiter@ettus.com>
References: <7fe1a8ca-30af-dcc8-2533-e553cb794651@iqo.uni-hannover.de>
 <CANf970Yo0TsXDdsoyqPxfCQ7b=sYjUUdToDeyBtrPEEjY=Q6Ww@mail.gmail.com>
Message-ID: <ae1367ab-c513-940b-3a8f-d910ad53a2f7@iqo.uni-hannover.de>
Date: Thu, 26 Mar 2020 16:25:07 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CANf970Yo0TsXDdsoyqPxfCQ7b=sYjUUdToDeyBtrPEEjY=Q6Ww@mail.gmail.com>
Subject: Re: [USRP-users] Trigger Output
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
From: Knut Stolzenberg via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Knut Stolzenberg <stolzenberg@iqo.uni-hannover.de>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3984390866102320727=="
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
--===============3984390866102320727==
Content-Type: multipart/alternative;
 boundary="------------08BF7FA53903530B0B1F5EA4"

This is a multi-part message in MIME format.
--------------08BF7FA53903530B0B1F5EA4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hey Sam,

I could get it done with the example code you refered to. Thank you very 
much!

Knut

Am 05.03.2020 um 17:39 schrieb Sam Reiter:
> Hey Knut,
>
> Reading a GPIO line requires that the GPIO state be sent back to the 
> host, processed, and then acted upon (in your case, sending a stream 
> command to the radio). There is going to be a good amount of latency 
> and jitter built into this.
>
> The alternative, which I would strongly recommend, would be to have 
> the USRP source the trigger. This can be set up really easily with ATR 
> - an FPGA functionality that coordinates GPIO states with radio TX/RX 
> states. I'd expect your TX start and GPIO state change to be 
> coincident on the order of nanoseconds. Checkout the gpio.cpp shipping 
> example for more info:
>
> https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/gpio.cpp
>
> If you need to differ the time between TX beginning and GPIO changing 
> state, you can use timed commands on both and force the offset.
>
> Sam
>
> On Thu, Mar 5, 2020 at 9:02 AM Knut Stolzenberg via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hello,
>
>     I have set up a trigger for my X310 using the Pin 2 of the GPIO Front
>     Panel. The Trigger is a TTL signal fed to the Pin. But we
>     experience a
>     jitter of ~100µs between the Trigger and the SDR starting to send
>     data.Is it possible to reduce this latency/ jittering to <10µs. If
>     not
>     is it possible to use e.g. Pin 6 as a trigger output, which
>     signalises
>     when the SDR starts to send data? How would I implement this in the
>     code? This would be interesting to me, since I could then
>     synchronise my
>     experiment to the SDR and not vice versa.
>
>     The code we use for setting up the trigger is pretty similar to
>     what is
>     on the ettus knowledge base. The important bits are these:
>
>     ...
>
>     ...
>
>     ...
>
>     //Declarate Pin 2 as Trigger Input -> this is used for the
>     triggered mode
>     #define MAN_GPIO_MASK (1 << 2)
>     #define AMP_GPIO_MASK (1 << 6)
>     #define ATR_MASKS (AMP_GPIO_MASK | MAN_GPIO_MASK)
>     // set up our values for ATR control: 1 for ATR, 0 for manual
>     #define ATR_CONTROL (AMP_GPIO_MASK & ~MAN_GPIO_MASK)
>     // set up the GPIO directions: 1 for output, 0 for input
>     #define GPIO_DDR  (AMP_GPIO_MASK & ~MAN_GPIO_MASK)
>     ....
>
>     ....
>
>     ....
>
>     usrp->set_gpio_attr("FP0", "CTRL", 0, ATR_MASKS);
>              usrp->set_gpio_attr("FP0", "DDR", 0, ATR_MASKS);
>
>              while (true)
>                      if (0 != usrp->get_gpio_attr("FP0", "READBACK", 0)) {
>                          /*here should be Pin 6 or "output trigger" high*/
>                          for (int i = 0; i < line; i++) { /*send data
>     to the
>     SDR*/
>                              tx_stream->send(
>                                  buff_ptrs[i], spb, md
>                              );
>                          }
>                         /*here should be Pin 6 or "output trigger" low
>                  }
>              }
>
>
>     Sincerely,
>
>     Knut
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------08BF7FA53903530B0B1F5EA4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hey Sam,</p>
    <p>I could get it done with the example code you refered to. Thank
      you very much!</p>
    <p>Knut<br>
    </p>
    <div class="moz-cite-prefix">Am 05.03.2020 um 17:39 schrieb Sam
      Reiter:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANf970Yo0TsXDdsoyqPxfCQ7b=sYjUUdToDeyBtrPEEjY=Q6Ww@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hey Knut,</div>
        <div><br>
        </div>
        <div>Reading a GPIO line requires that the GPIO state be sent
          back to the host, processed, and then acted upon (in your
          case, sending a stream command to the radio). There is going
          to be a good amount of latency and jitter built into this. <br>
        </div>
        <div><br>
        </div>
        <div>The alternative, which I would strongly recommend, would be
          to have the USRP source the trigger. This can be set up really
          easily with ATR - an FPGA functionality that coordinates GPIO
          states with radio TX/RX states. I'd expect your TX start and
          GPIO state change to be coincident on the order of
          nanoseconds. Checkout the gpio.cpp shipping example for more
          info:</div>
        <div><br>
        </div>
        <div><a
href="https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/gpio.cpp"
            moz-do-not-send="true">https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/gpio.cpp</a></div>
        <div><br>
        </div>
        <div>If you need to differ the time between TX beginning and
          GPIO changing state, you can use timed commands on both and
          force the offset. <br>
        </div>
        <div><br>
        </div>
        <div>
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
              <div dir="ltr">
                <div>
                  <div dir="ltr">Sam<br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Mar 5, 2020 at 9:02 AM
          Knut Stolzenberg via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
          <br>
          I have set up a trigger for my X310 using the Pin 2 of the
          GPIO Front <br>
          Panel. The Trigger is a TTL signal fed to the Pin. But we
          experience a <br>
          jitter of ~100µs between the Trigger and the SDR starting to
          send <br>
          data.Is it possible to reduce this latency/ jittering to
          &lt;10µs. If not <br>
          is it possible to use e.g. Pin 6 as a trigger output, which
          signalises <br>
          when the SDR starts to send data? How would I implement this
          in the <br>
          code? This would be interesting to me, since I could then
          synchronise my <br>
          experiment to the SDR and not vice versa.<br>
          <br>
          The code we use for setting up the trigger is pretty similar
          to what is <br>
          on the ettus knowledge base. The important bits are these:<br>
          <br>
          ...<br>
          <br>
          ...<br>
          <br>
          ...<br>
          <br>
          //Declarate Pin 2 as Trigger Input -&gt; this is used for the
          triggered mode<br>
          #define MAN_GPIO_MASK (1 &lt;&lt; 2)<br>
          #define AMP_GPIO_MASK (1 &lt;&lt; 6)<br>
          #define ATR_MASKS (AMP_GPIO_MASK | MAN_GPIO_MASK)<br>
          // set up our values for ATR control: 1 for ATR, 0 for manual<br>
          #define ATR_CONTROL (AMP_GPIO_MASK &amp; ~MAN_GPIO_MASK)<br>
          // set up the GPIO directions: 1 for output, 0 for input<br>
          #define GPIO_DDR  (AMP_GPIO_MASK &amp; ~MAN_GPIO_MASK)<br>
          ....<br>
          <br>
          ....<br>
          <br>
          ....<br>
          <br>
          usrp-&gt;set_gpio_attr("FP0", "CTRL", 0, ATR_MASKS);<br>
                   usrp-&gt;set_gpio_attr("FP0", "DDR", 0, ATR_MASKS);<br>
          <br>
                   while (true)<br>
                           if (0 != usrp-&gt;get_gpio_attr("FP0",
          "READBACK", 0)) {<br>
                               /*here should be Pin 6 or "output
          trigger" high*/<br>
                               for (int i = 0; i &lt; line; i++) {
          /*send data to the <br>
          SDR*/<br>
                                   tx_stream-&gt;send(<br>
                                       buff_ptrs[i], spb, md<br>
                                   );<br>
                               }<br>
                              /*here should be Pin 6 or "output trigger"
          low<br>
                       }<br>
                   }<br>
          <br>
          <br>
          Sincerely,<br>
          <br>
          Knut<br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------08BF7FA53903530B0B1F5EA4--


--===============3984390866102320727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3984390866102320727==--

