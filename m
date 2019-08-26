Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B229C827
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2019 05:58:26 +0200 (CEST)
Received: from [::1] (port=41418 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2698-0007QZ-Rv; Sun, 25 Aug 2019 23:58:22 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:41351)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i2695-0007Ly-3b
 for usrp-users@lists.ettus.com; Sun, 25 Aug 2019 23:58:19 -0400
Received: by mail-qt1-f169.google.com with SMTP id i4so16644651qtj.8
 for <usrp-users@lists.ettus.com>; Sun, 25 Aug 2019 20:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=iW4GV3j8Qz5awizS1HYJxfBsuYFXT9bCZuHQ0xxe5Cg=;
 b=HyXgZzM6Z+SDr9DiOvkFs9MbdbJBydj9y0azIoSVrpD6RFe66K2IuLPab1GAgTxFEG
 QzHsgBzY1coi8fNUTlgYks+EEIVKOY7jrwywliOtRK8MeU92CvGwB9IZdxu6YkFuIAF/
 HwmSCsyTL10vxjQA8gzEpT6J8gwYPa1Mko5S9742rmg6pbKyIFkFhM/aEJp/crMZk6X1
 XaaKs+cFciIiME3CrwI2+SlaiXuGk0gTwz82inxQfitWUks05+DnPs5amuikiM5jEk20
 VlRklvnBdfjnsnWpi9Ke2v4w4CWGQBcaVgVTBWwRWJAfZKxtrSbyjCJ9Oiet0wIqzKi8
 L/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=iW4GV3j8Qz5awizS1HYJxfBsuYFXT9bCZuHQ0xxe5Cg=;
 b=DobZn8y2KoNCwnSS6zTz2OpU2pAIAyBaFJhhHvm/GZFoXhweY7OtI1b1QosudbKg/c
 ckzga89J/7t4zteVw1XnbLGTmkRIsShmyUQjEIpQ99/5j0QiE+jZHJRmeqc2+i47kwvK
 VXKLJRho+ZRzGNujZr4aqx+8onGuRSK5+kXqKJlMqqIejNyw2vVqk0T/f30HuTCDSg4h
 Ow5qpkhfHx8I88SLGaOKSnAah53KuzuID6fUcZyFx9zEEd9nOSZ3SbXFC7n+jqckNINQ
 M4wc6wwAzZmQnmxOiLK+53sZotXSPh1V/VaslydY7sd+FxGpFacGN96z0VzGTZaSvmdU
 iomA==
X-Gm-Message-State: APjAAAUhi6LdY+SLRJr/ycbWKbWivwweBjdA/ETpmiISQI8uziPyWnxE
 /CxbP8ZjJOwJIdaH++ivA5b5eeGt
X-Google-Smtp-Source: APXvYqy8Y+asCQ0zBE+IbeSff4Tm7aKUsxtOL+hT8TEgF9j00SISofckUBaT372z4EUYuU/zmoJtHQ==
X-Received: by 2002:aed:2e02:: with SMTP id j2mr15186521qtd.89.1566791858366; 
 Sun, 25 Aug 2019 20:57:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id m5sm6944197qtc.89.2019.08.25.20.57.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 20:57:37 -0700 (PDT)
Message-ID: <5D6358B1.2030205@gmail.com>
Date: Sun, 25 Aug 2019 23:57:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: kailash kumar <kailash.kain@gmail.com>
References: <CAAMvqVG6ai0anEO5s0WU9RXoC4KOY40XS8jB=phpEjohBXa=Pg@mail.gmail.com>
 <5D5F5EE3.3080301@gmail.com>
 <CAAMvqVH9xur8w8PriotbzGNZ7_+yFsXYCjRh-VOJXMbZv4+qjA@mail.gmail.com>
 <5D60025E.7090101@gmail.com>
 <CAAMvqVFrKaMkz+4GyWxjvUj=+OPMBJojPVQY5H3cQHTowGaSxA@mail.gmail.com>
In-Reply-To: <CAAMvqVFrKaMkz+4GyWxjvUj=+OPMBJojPVQY5H3cQHTowGaSxA@mail.gmail.com>
Subject: Re: [USRP-users] Packet drop during frequency hopping observed with
 B210
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============6954543225444223146=="
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
--===============6954543225444223146==
Content-Type: multipart/alternative;
 boundary="------------000002020302000905050307"

This is a multi-part message in MIME format.
--------------000002020302000905050307
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/25/2019 11:15 PM, kailash kumar wrote:
> Thanks Marcus.
> I was referring to application level packets.
>
> Is there a way to double check how much is transition time for 
> frequency hopping so that we can accordingly factor that in, in our code?
>
> Thanks
> Kailash
You'll have to measure it.  I will note that the RFFE chip in the B210 
is NOT very fast in hopping.

>
> On Fri, Aug 23, 2019 at 8:42 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 08/23/2019 12:39 AM, kailash kumar wrote:
>>     Hi Marcus,
>>
>>     Please find below code for reference. I have removed few sync
>>     primates for readability.
>>
>>     // Receive callback for loopback mode
>>     void receive_cb(unsigned char *_payload, unsigned int len) {
>>       recvBytes += len;
>>     }
>>
>>     // Periodic Timer - 1 sec
>>     static void pSigHandler(int signo) {
>>       drv->SetTxFrequency(582.0e6);
>>       drv->SetRxFrequency(582.0e6);
>>
>>       fprintf(stderr, "sentBytes %d recvBytes %d\n", sentBytes,
>>     recvBytes);
>>       bcontinue = true;
>>       startTime = drv->GetTxTime();
>>     }
>>
>>     int main(int argc,char **argv) {
>>       // RFDriver abstracts uhd::usrp::multi_usrp::sptr,
>>     uhd::tx_streamer::sptr & uhd::rx_streamer::sptr
>>       drv = new RFDriver();
>>       drv->SetTxFrequency(562.0e6);
>>       drv->SetRxFrequency(562.0e6);
>>
>>       // B210
>>     drv->SetDevString(std::string("serial=312908B"));
>>       drv->SetTxGain(40.0); //
>>     uhd::tx_streamer::sptr->set_tx_freq(_tx_freq);
>>       drv->SetRxGain(20.0); //
>>     uhd::rx_streamer::sptr->set_rx_freq(_rx_freq);
>>       drv->SetTxSoftGain(-12.0); // powf(10.0f, _tx_gain_soft/20.0f);
>>     -> Software Gain multiplier
>>
>>       // Init OFDM : bandwidth = 1000e3f, number of subcarriers = 64,
>>     cyclic prefix length = 8, taper length = 2
>>       // Start Rx ->
>>     usrp_rx->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
>>       drv->InitTxRX();
>>
>>       // 1 sec timer to flip frequency
>>       signal(SIGALRM, pSigHandler);
>>       struct itimerval tv;
>>       tv.it_value.tv_sec = 1;
>>       tv.it_value.tv_usec = 0;
>>       tv.it_interval.tv_sec = 1;
>>       tv.it_interval.tv_usec = 0;
>>       setitimer(ITIMER_REAL, &tv, NULL);
>>
>>       startTime = uhd::tx_streamer::sptr->get_time_now().get_real_secs();
>>
>>       for (int i = 0; i < 5000; ++i) {
>>         double diff =
>>     uhd::tx_streamer::sptr->get_time_now().get_real_secs() - startTime;
>>         // If deadline check is disabled, then we are transmitting
>>     for entire duration
>>         bool deadline = std::isgreaterequal(diff, 0.95F); // check if
>>     we have 50 ms left
>>         if (deadline) {
>>           while(!bcontinue) { // This is set on 1 sec timer expiration
>>             sched_yield();
>>           }
>>           bcontinue = false;
>>         }
>>         drv->SendPayload((unsigned char *)data, n);
>>       }
>>     }
>>
>>     Thanks
>>     Kailash
>>
>>     On Fri, Aug 23, 2019 at 9:05 AM Marcus D. Leech via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>         On 08/22/2019 11:09 PM, kailash kumar via USRP-users wrote:
>>         > Hi,
>>         >
>>         > I am testing frequency hopping in a loopback mode on B210
>>         using
>>         > external RF loopback cable.
>>         > For First slot Tx/Rx is done at freq 562 Mhz. Subsequent
>>         slot is at
>>         > 582 Mhz.
>>         > I have observed Rx packet loss when Tx is done for entire
>>         slot duration.
>>         >
>>         > Please let me know if this is expected or if some
>>         configuration
>>         > is required for this.
>>         >
>>         > [INFO] [UHD] linux; GNU C++ version 9.1.1 20190716
>>         > gcc-9-branch@273504; Boost_106800; UHD_3.13.1.HEAD-0-gbbce3e45
>>         > [INFO] [B200] Detected Device: B210
>>         >
>>         > Slot duration - 1 second
>>         > Rx gain : 20.000000
>>         > Tx soft gain : -12.000000
>>         > Tx gain : 40.000000
>>         >
>>         > Testing results:
>>         > sentBytes 7225 recvBytes 7225 -> After sparing 50ms in 1st
>>         Tx slot at
>>         > freq 562 MHz.
>>         > sentBytes 7390 recvBytes 7390 -> Rest bytes in next Tx slot
>>         at freq
>>         > 582 Mhz.
>>         > sentBytes 7390 recvBytes 7390 -> No more Tx
>>         > sentBytes 7390 recvBytes 7390
>>         > sentBytes 7390 recvBytes 7390
>>         >
>>         > sentBytes 7390 recvBytes 7375 -> Utilize fully 1st Tx slot
>>         at freq 562
>>         > MHz. Rx drop observed.
>>         > sentBytes 7390 recvBytes 7375 -> No more Tx/Rx at 582 Mhz.
>>         > sentBytes 7390 recvBytes 7375
>>         >
>>         > Thanks & Regards
>>         > Kailash
>>         >
>>         Your description of the problem assumes the reader knows
>>         intimately the
>>         details of exactly what you're doing.  We don't.
>>
>>         We need to see code snippets that demonstrate your problem, or a
>>         much-more detailed description.
>>
>>
>     This doesn't help all that much.
>
>     When you say "drops packets" are you referring to
>     application-layer data packets, or dropped samples?
>
>     One can expect some issues during frequency transition because
>     there will always always be transients of some sort in the sample
>       stream, because, well, that's just how analog hardware behaves
>     when you're changing frequencies.
>
>
>


--------------000002020302000905050307
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/25/2019 11:15 PM, kailash kumar
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAAMvqVFrKaMkz+4GyWxjvUj=+OPMBJojPVQY5H3cQHTowGaSxA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Thanks Marcus.
        <div>I was referring to application level packets.</div>
        <div><br>
        </div>
        <div>Is there a way to double check how much is transition time
          for frequency hopping so that we can accordingly factor that
          in, in our code?</div>
        <div><br>
        </div>
        <div>Thanks</div>
        <div>Kailash</div>
      </div>
    </blockquote>
    You'll have to measure it.  I will note that the RFFE chip in the
    B210 is NOT very fast in hopping.<br>
    <br>
    <blockquote
cite="mid:CAAMvqVFrKaMkz+4GyWxjvUj=+OPMBJojPVQY5H3cQHTowGaSxA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, Aug 23, 2019 at 8:42
          PM Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div class="gmail-m_-8737079490344541120moz-cite-prefix">On
              08/23/2019 12:39 AM, kailash kumar wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div dir="ltr">
                  <div dir="ltr">Hi Marcus,
                    <div><br>
                    </div>
                    <div>Please find below code for reference. I have
                      removed few sync primates for readability.</div>
                    <div><br>
                    </div>
                    <div>
                      <div>// Receive callback for loopback mode</div>
                      <div>void receive_cb(unsigned char *_payload,
                        unsigned int len) {</div>
                      <div>  recvBytes += len;</div>
                      <div>}</div>
                      <div><br>
                      </div>
                      <div>// Periodic Timer - 1 sec</div>
                      <div>static void pSigHandler(int signo) {</div>
                      <div>  drv-&gt;SetTxFrequency(582.0e6);</div>
                      <div>  drv-&gt;SetRxFrequency(582.0e6);</div>
                      <div><br>
                      </div>
                      <div>  fprintf(stderr, "sentBytes %d recvBytes
                        %d\n", sentBytes, recvBytes);<br>
                      </div>
                      <div>  bcontinue = true;</div>
                      <div>  startTime = drv-&gt;GetTxTime();</div>
                      <div>}</div>
                      <div><br>
                      </div>
                      <div>int main(int argc,char **argv) {</div>
                      <div>  // RFDriver abstracts
                        uhd::usrp::multi_usrp::sptr,
                        uhd::tx_streamer::sptr &amp;
                        uhd::rx_streamer::sptr</div>
                      <div>  drv = new RFDriver();</div>
                      <div>  drv-&gt;SetTxFrequency(562.0e6);</div>
                      <div>  drv-&gt;SetRxFrequency(562.0e6);</div>
                      <div><br>
                      </div>
                      <div>  // B210</div>
                      <div> 
                        drv-&gt;SetDevString(std::string("serial=312908B"));</div>
                      <div>  drv-&gt;SetTxGain(40.0); //
                        uhd::tx_streamer::sptr-&gt;set_tx_freq(_tx_freq);</div>
                      <div>  drv-&gt;SetRxGain(20.0); //
                        uhd::rx_streamer::sptr-&gt;set_rx_freq(_rx_freq);</div>
                      <div>  drv-&gt;SetTxSoftGain(-12.0); //
                        powf(10.0f, _tx_gain_soft/20.0f); -&gt; Software
                        Gain multiplier</div>
                      <div><br>
                      </div>
                      <div>  // Init OFDM : bandwidth = 1000e3f, number
                        of subcarriers = 64, cyclic prefix length = 8,
                        taper length = 2</div>
                      <div>  // Start Rx -&gt;
usrp_rx-&gt;issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);</div>
                      <div>  drv-&gt;InitTxRX(); </div>
                      <div><br>
                      </div>
                      <div>  // 1 sec timer to flip frequency</div>
                      <div>  signal(SIGALRM, pSigHandler);</div>
                      <div>  struct itimerval tv;</div>
                      <div>  tv.it_value.tv_sec = 1;</div>
                      <div>  tv.it_value.tv_usec = 0;</div>
                      <div>  tv.it_interval.tv_sec = 1;</div>
                      <div>  tv.it_interval.tv_usec = 0;</div>
                      <div>  setitimer(ITIMER_REAL, &amp;tv, NULL);</div>
                      <div><br>
                      </div>
                      <div>  startTime =
                        uhd::tx_streamer::sptr-&gt;get_time_now().get_real_secs();</div>
                      <div><br>
                      </div>
                      <div>  for (int i = 0; i &lt; 5000; ++i) {</div>
                      <div>    double diff =
                        uhd::tx_streamer::sptr-&gt;get_time_now().get_real_secs()
                        - startTime;</div>
                      <div>    // If deadline check is disabled, then we
                        are transmitting for entire duration</div>
                      <div>    bool deadline = std::isgreaterequal(diff,
                        0.95F); // check if we have 50 ms left</div>
                      <div>    if (deadline) {</div>
                      <div>      while(!bcontinue) { // This is set on 1
                        sec timer expiration</div>
                      <div>        sched_yield();</div>
                      <div>      }</div>
                      <div>      bcontinue = false;</div>
                      <div>    }</div>
                      <div>    drv-&gt;SendPayload((unsigned char
                        *)data, n);</div>
                      <div>  }</div>
                      <div>}</div>
                    </div>
                    <div><br>
                    </div>
                    <div>Thanks</div>
                    <div>Kailash</div>
                  </div>
                </div>
                <br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Fri, Aug 23, 2019
                    at 9:05 AM Marcus D. Leech via USRP-users &lt;<a
                      moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">On

                    08/22/2019 11:09 PM, kailash kumar via USRP-users
                    wrote:<br>
                    &gt; Hi,<br>
                    &gt;<br>
                    &gt; I am testing frequency hopping in a loopback
                    mode on B210 using <br>
                    &gt; external RF loopback cable.<br>
                    &gt; For First slot Tx/Rx is done at freq 562 Mhz.
                    Subsequent slot is at <br>
                    &gt; 582 Mhz.<br>
                    &gt; I have observed Rx packet loss when Tx is done
                    for entire slot duration.<br>
                    &gt;<br>
                    &gt; Please let me know if this is expected or if
                    some configuration <br>
                    &gt; is required for this.<br>
                    &gt;<br>
                    &gt; [INFO] [UHD] linux; GNU C++ version 9.1.1
                    20190716 <br>
                    &gt; gcc-9-branch@273504; Boost_106800;
                    UHD_3.13.1.HEAD-0-gbbce3e45<br>
                    &gt; [INFO] [B200] Detected Device: B210<br>
                    &gt;<br>
                    &gt; Slot duration - 1 second<br>
                    &gt; Rx gain : 20.000000<br>
                    &gt; Tx soft gain : -12.000000<br>
                    &gt; Tx gain : 40.000000<br>
                    &gt;<br>
                    &gt; Testing results:<br>
                    &gt; sentBytes 7225 recvBytes 7225 -&gt; After
                    sparing 50ms in 1st Tx slot at <br>
                    &gt; freq 562 MHz.<br>
                    &gt; sentBytes 7390 recvBytes 7390 -&gt; Rest bytes
                    in next Tx slot at freq <br>
                    &gt; 582 Mhz.<br>
                    &gt; sentBytes 7390 recvBytes 7390 -&gt; No more Tx<br>
                    &gt; sentBytes 7390 recvBytes 7390<br>
                    &gt; sentBytes 7390 recvBytes 7390<br>
                    &gt;<br>
                    &gt; sentBytes 7390 recvBytes 7375 -&gt; Utilize
                    fully 1st Tx slot at freq 562 <br>
                    &gt; MHz. Rx drop observed.<br>
                    &gt; sentBytes 7390 recvBytes 7375 -&gt; No more
                    Tx/Rx at 582 Mhz.<br>
                    &gt; sentBytes 7390 recvBytes 7375<br>
                    &gt;<br>
                    &gt; Thanks &amp; Regards<br>
                    &gt; Kailash<br>
                    &gt;<br>
                    Your description of the problem assumes the reader
                    knows intimately the <br>
                    details of exactly what you're doing.  We don't.<br>
                    <br>
                    We need to see code snippets that demonstrate your
                    problem, or a <br>
                    much-more detailed description.<br>
                    <br>
                    <br>
                  </blockquote>
                </div>
              </div>
            </blockquote>
            This doesn't help all that much.<br>
            <br>
            When you say "drops packets" are you referring to
            application-layer data packets, or dropped samples?<br>
            <br>
            One can expect some issues during frequency transition
            because there will always always be transients of some sort
            in the sample<br>
              stream, because, well, that's just how analog hardware
            behaves when you're changing frequencies.<br>
            <br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000002020302000905050307--


--===============6954543225444223146==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6954543225444223146==--

