Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A946D9C79E
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2019 05:16:41 +0200 (CEST)
Received: from [::1] (port=35384 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i25Ul-0005lQ-Ak; Sun, 25 Aug 2019 23:16:39 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:33375)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <kailash.kain@gmail.com>)
 id 1i25Uh-0005gp-KC
 for usrp-users@lists.ettus.com; Sun, 25 Aug 2019 23:16:35 -0400
Received: by mail-oi1-f173.google.com with SMTP id l2so11080429oil.0
 for <usrp-users@lists.ettus.com>; Sun, 25 Aug 2019 20:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZecVeYu/gVV/xy1bhEJm5zGznuZEFPsksp2sRBfSaY8=;
 b=ZjFtuquf0/mipzPJQ6F68jkTGpXeEgJRotnV02aIrfMhqryWYOtx9t6f6AsboIeBQI
 hT9zO0DWDrimTJ6YG2dTOVMalbjbQaLolqpHKtpcejBq1TnnUiNxDgEXocCfeXDC56/3
 v17ae/4nE2yIicI7lBxuaxGaL9Gpa8Af9XmLAQgpHitJmobbw5xJLG8OnnnHOYdQwd4A
 fgNBBOJuTnakIRhKmxBGBC9pkvLP9nspuF3N7Jg8sjIukTkdqwTkA5xFJhSRajT/pdh4
 WJHP3I/Z/2pXiWu9k3YzgBsN/cKjNDUN9jwlN8JTaDLySbxM2KqsVz5nOrcd3RKsZ7j3
 YHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZecVeYu/gVV/xy1bhEJm5zGznuZEFPsksp2sRBfSaY8=;
 b=udQ6K/v/w1gNAr1k/DbQrWBhI9ROEvldxhzEgmXErOMUvVsHvRlUJVs7A07XvT4CpP
 AVCj4RikGGO2JbcDMW0vysmB2ePuVKs0aQqi1qzVWz83rm+4Ge2PEsDz0Uz1qe/FngXE
 D9mq3B7e6uDSoT/PIg0bzNt4sGEODtZX63EyUnHbe5SQJO2OI5jHakoA7fUFVg7zeiHG
 IB0l+/sfD6HzjdxKugBIMDwipWt2sDdPvGyhbthsSPBR7NzSCMd6lS+EKEMd9NYMtYpA
 vB8jMSNUTDMKp/lKi8yfHRu6s4oOVq50u/cSgz7DOGHofDPKXRuYwyjRfXQ1YE4zDtWu
 hVwg==
X-Gm-Message-State: APjAAAWLpW/U3ELnJLeYryT67+1Ki9o813cTht3E3+051S1G0oXHOT/n
 gpuB619fnhpIdM4GE2GYr7dr3VAGTkZt0h86jf0=
X-Google-Smtp-Source: APXvYqzF2tcn9R6k7SOnKhudc9NBu4AcV6FBdaepAwRRS2/Ge3SQtpnn5iR5G0cgerV4cmu2JF8DxtJEM5zNd9aDyDc=
X-Received: by 2002:aca:1c13:: with SMTP id c19mr10995398oic.106.1566789354746; 
 Sun, 25 Aug 2019 20:15:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMvqVG6ai0anEO5s0WU9RXoC4KOY40XS8jB=phpEjohBXa=Pg@mail.gmail.com>
 <5D5F5EE3.3080301@gmail.com>
 <CAAMvqVH9xur8w8PriotbzGNZ7_+yFsXYCjRh-VOJXMbZv4+qjA@mail.gmail.com>
 <5D60025E.7090101@gmail.com>
In-Reply-To: <5D60025E.7090101@gmail.com>
Date: Mon, 26 Aug 2019 08:45:28 +0530
Message-ID: <CAAMvqVFrKaMkz+4GyWxjvUj=+OPMBJojPVQY5H3cQHTowGaSxA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
From: kailash kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: kailash kumar <kailash.kain@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8839444235132552416=="
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

--===============8839444235132552416==
Content-Type: multipart/alternative; boundary="000000000000ed7a570590fc9285"

--000000000000ed7a570590fc9285
Content-Type: text/plain; charset="UTF-8"

Thanks Marcus.
I was referring to application level packets.

Is there a way to double check how much is transition time for frequency
hopping so that we can accordingly factor that in, in our code?

Thanks
Kailash

On Fri, Aug 23, 2019 at 8:42 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 08/23/2019 12:39 AM, kailash kumar wrote:
>
> Hi Marcus,
>
> Please find below code for reference. I have removed few sync primates for
> readability.
>
> // Receive callback for loopback mode
> void receive_cb(unsigned char *_payload, unsigned int len) {
>   recvBytes += len;
> }
>
> // Periodic Timer - 1 sec
> static void pSigHandler(int signo) {
>   drv->SetTxFrequency(582.0e6);
>   drv->SetRxFrequency(582.0e6);
>
>   fprintf(stderr, "sentBytes %d recvBytes %d\n", sentBytes, recvBytes);
>   bcontinue = true;
>   startTime = drv->GetTxTime();
> }
>
> int main(int argc,char **argv) {
>   // RFDriver abstracts uhd::usrp::multi_usrp::sptr,
> uhd::tx_streamer::sptr & uhd::rx_streamer::sptr
>   drv = new RFDriver();
>   drv->SetTxFrequency(562.0e6);
>   drv->SetRxFrequency(562.0e6);
>
>   // B210
>   drv->SetDevString(std::string("serial=312908B"));
>   drv->SetTxGain(40.0); // uhd::tx_streamer::sptr->set_tx_freq(_tx_freq);
>   drv->SetRxGain(20.0); // uhd::rx_streamer::sptr->set_rx_freq(_rx_freq);
>   drv->SetTxSoftGain(-12.0); // powf(10.0f, _tx_gain_soft/20.0f); ->
> Software Gain multiplier
>
>   // Init OFDM : bandwidth = 1000e3f, number of subcarriers = 64, cyclic
> prefix length = 8, taper length = 2
>   // Start Rx ->
> usrp_rx->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
>   drv->InitTxRX();
>
>   // 1 sec timer to flip frequency
>   signal(SIGALRM, pSigHandler);
>   struct itimerval tv;
>   tv.it_value.tv_sec = 1;
>   tv.it_value.tv_usec = 0;
>   tv.it_interval.tv_sec = 1;
>   tv.it_interval.tv_usec = 0;
>   setitimer(ITIMER_REAL, &tv, NULL);
>
>   startTime = uhd::tx_streamer::sptr->get_time_now().get_real_secs();
>
>   for (int i = 0; i < 5000; ++i) {
>     double diff = uhd::tx_streamer::sptr->get_time_now().get_real_secs() -
> startTime;
>     // If deadline check is disabled, then we are transmitting for entire
> duration
>     bool deadline = std::isgreaterequal(diff, 0.95F); // check if we have
> 50 ms left
>     if (deadline) {
>       while(!bcontinue) { // This is set on 1 sec timer expiration
>         sched_yield();
>       }
>       bcontinue = false;
>     }
>     drv->SendPayload((unsigned char *)data, n);
>   }
> }
>
> Thanks
> Kailash
>
> On Fri, Aug 23, 2019 at 9:05 AM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 08/22/2019 11:09 PM, kailash kumar via USRP-users wrote:
>> > Hi,
>> >
>> > I am testing frequency hopping in a loopback mode on B210 using
>> > external RF loopback cable.
>> > For First slot Tx/Rx is done at freq 562 Mhz. Subsequent slot is at
>> > 582 Mhz.
>> > I have observed Rx packet loss when Tx is done for entire slot duration.
>> >
>> > Please let me know if this is expected or if some configuration
>> > is required for this.
>> >
>> > [INFO] [UHD] linux; GNU C++ version 9.1.1 20190716
>> > gcc-9-branch@273504; Boost_106800; UHD_3.13.1.HEAD-0-gbbce3e45
>> > [INFO] [B200] Detected Device: B210
>> >
>> > Slot duration - 1 second
>> > Rx gain : 20.000000
>> > Tx soft gain : -12.000000
>> > Tx gain : 40.000000
>> >
>> > Testing results:
>> > sentBytes 7225 recvBytes 7225 -> After sparing 50ms in 1st Tx slot at
>> > freq 562 MHz.
>> > sentBytes 7390 recvBytes 7390 -> Rest bytes in next Tx slot at freq
>> > 582 Mhz.
>> > sentBytes 7390 recvBytes 7390 -> No more Tx
>> > sentBytes 7390 recvBytes 7390
>> > sentBytes 7390 recvBytes 7390
>> >
>> > sentBytes 7390 recvBytes 7375 -> Utilize fully 1st Tx slot at freq 562
>> > MHz. Rx drop observed.
>> > sentBytes 7390 recvBytes 7375 -> No more Tx/Rx at 582 Mhz.
>> > sentBytes 7390 recvBytes 7375
>> >
>> > Thanks & Regards
>> > Kailash
>> >
>> Your description of the problem assumes the reader knows intimately the
>> details of exactly what you're doing.  We don't.
>>
>> We need to see code snippets that demonstrate your problem, or a
>> much-more detailed description.
>>
>>
>> This doesn't help all that much.
>
> When you say "drops packets" are you referring to application-layer data
> packets, or dropped samples?
>
> One can expect some issues during frequency transition because there will
> always always be transients of some sort in the sample
>   stream, because, well, that's just how analog hardware behaves when
> you're changing frequencies.
>
>
>
>

--000000000000ed7a570590fc9285
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Marcus.<div>I was referring to application level pa=
ckets.</div><div><br></div><div>Is there a way to double check how much is =
transition time for frequency hopping so that we can accordingly factor tha=
t in, in our code?</div><div><br></div><div>Thanks</div><div>Kailash</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, Aug 23, 2019 at 8:42 PM Marcus D. Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-l=
eft:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-8737079490344541120moz-cite-prefix">On 08/23/201=
9 12:39 AM, kailash kumar
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">Hi Marcus,
            <div><br>
            </div>
            <div>Please find below code for reference. I have removed
              few sync primates for readability.</div>
            <div><br>
            </div>
            <div>
              <div>// Receive callback for loopback mode</div>
              <div>void receive_cb(unsigned char *_payload, unsigned int
                len) {</div>
              <div>=C2=A0 recvBytes +=3D len;</div>
              <div>}</div>
              <div><br>
              </div>
              <div>// Periodic Timer - 1 sec</div>
              <div>static void pSigHandler(int signo) {</div>
              <div>=C2=A0 drv-&gt;SetTxFrequency(582.0e6);</div>
              <div>=C2=A0 drv-&gt;SetRxFrequency(582.0e6);</div>
              <div><br>
              </div>
              <div>=C2=A0 fprintf(stderr, &quot;sentBytes %d recvBytes %d\n=
&quot;,
                sentBytes, recvBytes);<br>
              </div>
              <div>=C2=A0 bcontinue =3D true;</div>
              <div>=C2=A0 startTime =3D drv-&gt;GetTxTime();</div>
              <div>}</div>
              <div><br>
              </div>
              <div>int main(int argc,char **argv) {</div>
              <div>=C2=A0 // RFDriver abstracts uhd::usrp::multi_usrp::sptr=
,
                uhd::tx_streamer::sptr &amp; uhd::rx_streamer::sptr</div>
              <div>=C2=A0 drv =3D new RFDriver();</div>
              <div>=C2=A0 drv-&gt;SetTxFrequency(562.0e6);</div>
              <div>=C2=A0 drv-&gt;SetRxFrequency(562.0e6);</div>
              <div><br>
              </div>
              <div>=C2=A0 // B210</div>
              <div>=C2=A0
                drv-&gt;SetDevString(std::string(&quot;serial=3D312908B&quo=
t;));</div>
              <div>=C2=A0 drv-&gt;SetTxGain(40.0); //
                uhd::tx_streamer::sptr-&gt;set_tx_freq(_tx_freq);</div>
              <div>=C2=A0 drv-&gt;SetRxGain(20.0); //
                uhd::rx_streamer::sptr-&gt;set_rx_freq(_rx_freq);</div>
              <div>=C2=A0 drv-&gt;SetTxSoftGain(-12.0); // powf(10.0f,
                _tx_gain_soft/20.0f); -&gt; Software Gain multiplier</div>
              <div><br>
              </div>
              <div>=C2=A0 // Init OFDM : bandwidth =3D 1000e3f, number of
                subcarriers =3D 64, cyclic prefix length =3D 8, taper lengt=
h
                =3D 2</div>
              <div>=C2=A0 // Start Rx -&gt;
usrp_rx-&gt;issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOU=
S);</div>
              <div>=C2=A0 drv-&gt;InitTxRX();=C2=A0</div>
              <div><br>
              </div>
              <div>=C2=A0 // 1 sec timer to flip frequency</div>
              <div>=C2=A0 signal(SIGALRM, pSigHandler);</div>
              <div>=C2=A0 struct itimerval tv;</div>
              <div>=C2=A0 tv.it_value.tv_sec =3D 1;</div>
              <div>=C2=A0 tv.it_value.tv_usec =3D 0;</div>
              <div>=C2=A0 tv.it_interval.tv_sec =3D 1;</div>
              <div>=C2=A0 tv.it_interval.tv_usec =3D 0;</div>
              <div>=C2=A0 setitimer(ITIMER_REAL, &amp;tv, NULL);</div>
              <div><br>
              </div>
              <div>=C2=A0 startTime =3D
                uhd::tx_streamer::sptr-&gt;get_time_now().get_real_secs();<=
/div>
              <div><br>
              </div>
              <div>=C2=A0 for (int i =3D 0; i &lt; 5000; ++i) {</div>
              <div>=C2=A0 =C2=A0 double diff =3D
                uhd::tx_streamer::sptr-&gt;get_time_now().get_real_secs()
                - startTime;</div>
              <div>=C2=A0 =C2=A0 // If deadline check is disabled, then we =
are
                transmitting for entire duration</div>
              <div>=C2=A0 =C2=A0 bool deadline =3D std::isgreaterequal(diff=
, 0.95F);
                // check if we have 50 ms left</div>
              <div>=C2=A0 =C2=A0 if (deadline) {</div>
              <div>=C2=A0 =C2=A0 =C2=A0 while(!bcontinue) { // This is set =
on 1 sec
                timer expiration</div>
              <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sched_yield();</div>
              <div>=C2=A0 =C2=A0 =C2=A0 }</div>
              <div>=C2=A0 =C2=A0 =C2=A0 bcontinue =3D false;</div>
              <div>=C2=A0 =C2=A0 }</div>
              <div>=C2=A0 =C2=A0 drv-&gt;SendPayload((unsigned char *)data,=
 n);</div>
              <div>=C2=A0 }</div>
              <div>}</div>
            </div>
            <div><br>
            </div>
            <div>Thanks</div>
            <div>Kailash</div>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 23, 2019 at 9:0=
5
            AM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,=
204,204);padding-left:1ex">On
            08/22/2019 11:09 PM, kailash kumar via USRP-users wrote:<br>
            &gt; Hi,<br>
            &gt;<br>
            &gt; I am testing frequency hopping in a loopback mode on
            B210 using <br>
            &gt; external RF loopback cable.<br>
            &gt; For First slot Tx/Rx is done at freq 562 Mhz.
            Subsequent slot is at <br>
            &gt; 582 Mhz.<br>
            &gt; I have observed Rx packet loss when Tx is done for
            entire slot duration.<br>
            &gt;<br>
            &gt; Please let me know if this is expected or if some
            configuration <br>
            &gt; is required for this.<br>
            &gt;<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 9.1.1 20190716 <br>
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
            &gt; sentBytes 7225 recvBytes 7225 -&gt; After sparing 50ms
            in 1st Tx slot at <br>
            &gt; freq 562 MHz.<br>
            &gt; sentBytes 7390 recvBytes 7390 -&gt; Rest bytes in next
            Tx slot at freq <br>
            &gt; 582 Mhz.<br>
            &gt; sentBytes 7390 recvBytes 7390 -&gt; No more Tx<br>
            &gt; sentBytes 7390 recvBytes 7390<br>
            &gt; sentBytes 7390 recvBytes 7390<br>
            &gt;<br>
            &gt; sentBytes 7390 recvBytes 7375 -&gt; Utilize fully 1st
            Tx slot at freq 562 <br>
            &gt; MHz. Rx drop observed.<br>
            &gt; sentBytes 7390 recvBytes 7375 -&gt; No more Tx/Rx at
            582 Mhz.<br>
            &gt; sentBytes 7390 recvBytes 7375<br>
            &gt;<br>
            &gt; Thanks &amp; Regards<br>
            &gt; Kailash<br>
            &gt;<br>
            Your description of the problem assumes the reader knows
            intimately the <br>
            details of exactly what you&#39;re doing.=C2=A0 We don&#39;t.<b=
r>
            <br>
            We need to see code snippets that demonstrate your problem,
            or a <br>
            much-more detailed description.<br>
            <br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    This doesn&#39;t help all that much.<br>
    <br>
    When you say &quot;drops packets&quot; are you referring to application=
-layer
    data packets, or dropped samples?<br>
    <br>
    One can expect some issues during frequency transition because there
    will always always be transients of some sort in the sample<br>
    =C2=A0 stream, because, well, that&#39;s just how analog hardware behav=
es
    when you&#39;re changing frequencies.<br>
    <br>
    <br>
    <br>
  </div>

</blockquote></div>

--000000000000ed7a570590fc9285--


--===============8839444235132552416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8839444235132552416==--

