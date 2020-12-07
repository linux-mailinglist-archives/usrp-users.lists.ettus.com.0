Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B28D92D0D5B
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 10:49:52 +0100 (CET)
Received: from [::1] (port=34444 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmD9R-0001xF-DO; Mon, 07 Dec 2020 04:49:49 -0500
Received: from resqmta-ch2-11v.sys.comcast.net ([69.252.207.43]:58987)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1kmD9N-0001s5-8n
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 04:49:45 -0500
Received: from resomta-ch2-05v.sys.comcast.net ([69.252.207.101])
 by resqmta-ch2-11v.sys.comcast.net with ESMTP
 id mD8ek0vqvnLTAmD8ikEzi6; Mon, 07 Dec 2020 09:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1607334544;
 bh=H+4z/i6K2kxUKsbHaOUqcuO4UCx4DGWb68ZbfLVM9Yo=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=DlRAZda2FmlGjj0Oq1UCmZ+TEh4khXALk5YOQ50pxikln2zcvl7YJvI1ssAiYnjqD
 Ip+juLwfchpGZqGjxbRVXGxF5S9uAWT0ipRvhwVWoUsjZhlUXqRY2hUUAZRgSyKGdC
 QEJ6E8aNW+j2k3UQwk9ieXd3fJmrO24R+VkcQMWeeXDuGupDdCQyCGJO8anO86ZLX4
 eEi0tcqj+xnW/lez66QM6Uzrn6PY9TLQhH27q/XnevBzq5G2RSwO6bMjd4W+yMvK7A
 yzRlmpMm7f9KGj4PheK/Ms1nOEiXuo3oKbu3xc2y8/VjZ0Ybq1uHU//ZFhM45TCIT+
 55d+GUZZTg3Mg==
Received: from [IPv6:2601:647:4200:ea30:9d49:426b:710d:638b]
 ([IPv6:2601:647:4200:ea30:9d49:426b:710d:638b])
 by resomta-ch2-05v.sys.comcast.net with ESMTPSA
 id mD8gkMTi9d9KlmD8hkGq8j; Mon, 07 Dec 2020 09:49:04 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <trinity-a9e545d1-8706-4d8e-aeb5-1c2492fc8b6c-1606726945931@3c-app-gmx-bap15>
 <D28E5616-DFCA-498D-9136-634583AB43EB@gmail.com>
 <trinity-d628c5aa-086f-4f3b-baf9-b2a1baa0f3a3-1606762444896@3c-app-gmx-bs06>
 <5FC56D41.8030400@gmail.com>
 <trinity-2d019907-a4ad-4db8-96ab-f6af03a7ef20-1607304823144@3c-app-gmx-bap46>
 <CAOkUcSvLkNWOdK8HTt_kPV043t6ppkPZSaPzmnRaatngoFgUAw@mail.gmail.com>
 <trinity-829f7a09-14a7-41a2-bb32-60ff4c499bcd-1607329985390@3c-app-gmx-bap08>
Message-ID: <ef21b223-acaf-3375-7162-01634acda28f@comcast.net>
Date: Mon, 7 Dec 2020 01:49:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <trinity-829f7a09-14a7-41a2-bb32-60ff4c499bcd-1607329985390@3c-app-gmx-bap08>
Content-Language: en-US
Subject: Re: [USRP-users] UBX160 TX "noise figure"?
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
Content-Type: multipart/mixed; boundary="===============2490265031433551966=="
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
--===============2490265031433551966==
Content-Type: multipart/alternative;
 boundary="------------63BD18A1CEF109678634B369"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------63BD18A1CEF109678634B369
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

The 98 dB figure for 16-bit DAC SNR is just a theoretical maximum. The 
actual SNR is lower. The Noise Spectral Density of the AD9146 is around 
-163 dBc/Hz, so the SNR in the Nyquist bandwidth of 400 MHz is 77 dB 
(-163 + 10 log 400). I guess the UBX has a 160 MHz low pass, so 81 dB is 
probably a better estimate.

https://training.ti.com/sites/default/files/docs/TIPL%204703%20-%20Understanding%20Signal%20to%20Noise%20Ratio%20and%20Noise%20Spectral%20Density%20in%20High%20Speed%20Datat%20Converters_3.pdf

Ron

On 12/7/20 00:33, Lukas Haase via USRP-users wrote:
> Hi Marino,
> Which digital attenuator do you mean?
>
>   * The 46.43dB attenuation that I use in the TX-RX loopback is just
>     composed of static, passive attenuators
>   * The receive gain is set to 20dB. Hence I assume I do not make use
>     of the 6dB "digital gain" in the ADC and from the remaining 31.6dB
>     gain I use 20. Hence I the "digital attenuator" should be 11.5dB
>     if that answers your question?
>   * At a receive gain of 20dB, the noise figure is ~5dB, according to
>     specs and measurements. -174+5+dB10(5e6)=-102dBm which is exactly
>     what I measure without a signal applied.
>
> Thanks,
> Lukas
> *Gesendet:* Montag, 07. Dezember 2020 um 03:23 Uhr
> *Von:* "cyberphox" <cyberphox@gmail.com>
> *An:* "Lukas Haase" <lukashaase@gmx.at>
> *Cc:* "Marcus D. Leech" <patchvonbraun@gmail.com>, 
> USRP-users@lists.ettus.com
> *Betreff:* Re: [USRP-users] UBX160 TX "noise figure"?
> Hi Lukas,
> What setting do you have the digital attenuator set to?
> Kind regards
> Marino
> On Mon, 7 Dec 2020 at 02:05, Lukas Haase via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Marcus,
>     Thanks again!
>     I did now the following experiment: I connected TX to RX
>     back-to-back with 46.43dB attenuation in between. I set TX gain
>     and RX gain to 20dB and transmit a single CW at -3dBFS.
>     This means my output power is *Pout=11.44dBm* (cross checked with
>     spectrum analyzer) and on RX I sould have Pin=-34.99dBm. Indeed,
>     calculating the RMS of the received signal and converting to dBm,
>     I get *Pin=-35.0224dBm*. Spot on!
>     The red line is what I receive on the PSD (blue is the TX that I
>     send):
>     As you can see from the annotation, the measured "SNR" of the
>     received signal is only 38.7dB. I think this is mainly caused by
>     the phase noise skirt (and potentially the I/Q image).
>     In order to keep only consider thermal noise, I add random noise
>     to the original CW (using randn(...)+1i*randn(...) in MATLAB)
>     until it matches roughly the white noise floor of the received
>     signal. It's *SNRoutput=50dB* (yellow line).
>     Now, according to our discussion below, at Gtx=20, we should have
>     *SNRoutput=72dB* (assuming thermal noise only).
>     Where could the *22dB difference* in SNR come from?
>     Thanks!
>     Lukas
>     PS: I am aware of phase noise, DC offsets, I/Q imbalance etc. But
>     as you can see from my plot, I am /only /considerung thermal
>     noise. The thermal noise of the receiver should be orders of
>     magnitude lower (at least -102dBm) so the receiver noise should
>     not limit the results either.
>     *Gesendet:* Montag, 30. November 2020 um 17:08 Uhr
>     *Von:* "Marcus D. Leech" <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>
>     *An:* "Lukas Haase" <lukashaase@gmx.at <mailto:lukashaase@gmx.at>>
>     *Cc:* USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     *Betreff:* Re: [USRP-users] UBX160 TX "noise figure"?
>     On 11/30/2020 01:54 PM, Lukas Haase wrote:
>
>         Hi Marcus,
>         That makes sense, thanks.
>         Would you be willing to confirm if what I am doing here is
>         correct?
>         To first order, the DAC has an SNR of 98dB (16 bit). Then I
>         use Fries' equation to get the NF of the following stages (for
>         the filter and the attenuator, the noise figure is equal to
>         its attenuation). The NF is dominated by the 2nd and third term.
>         Then I subtract the NF from the SNR which gives me an output
>         SNR somewhere between 92dB and 67dB. Does that sound right?
>
>     For the attenuator term, just assign it a NF (in dB) of (31.5 -
>     TXGAIN).
>
>     The noise figure of an attenuator is just the attenuation
>     value--similarly for the filter. Just pretend it's a fixed
>     attenuator with 0 gain.
>
>     So the 'noise figure' after the DAC is just  2+(31.5 - TXGAIN)
>     then factor in the gains and noise figures of the amplifiers.
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

--------------63BD18A1CEF109678634B369
Content-Type: multipart/related;
 boundary="------------94D3A2B2E2F14DF601594837"


--------------94D3A2B2E2F14DF601594837
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>The 98 dB figure for 16-bit DAC SNR is just a theoretical
      maximum. The actual SNR is lower. The Noise Spectral Density of
      the AD9146 is around -163 dBc/Hz, so the SNR in the Nyquist
      bandwidth of 400 MHz is 77 dB (-163 + 10 log 400). I guess the UBX
      has a 160 MHz low pass, so 81 dB is probably a better estimate.</p>
    <p><a class="moz-txt-link-freetext" href="https://training.ti.com/sites/default/files/docs/TIPL%204703%20-%20Understanding%20Signal%20to%20Noise%20Ratio%20and%20Noise%20Spectral%20Density%20in%20High%20Speed%20Datat%20Converters_3.pdf">https://training.ti.com/sites/default/files/docs/TIPL%204703%20-%20Understanding%20Signal%20to%20Noise%20Ratio%20and%20Noise%20Spectral%20Density%20in%20High%20Speed%20Datat%20Converters_3.pdf</a><br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 12/7/20 00:33, Lukas Haase via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:trinity-829f7a09-14a7-41a2-bb32-60ff4c499bcd-1607329985390@3c-app-gmx-bap08">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>Hi Marino,</div>
        <div> </div>
        <div>Which digital attenuator do you mean?</div>
        <div> </div>
        <ul>
          <li>The 46.43dB attenuation that I use in the TX-RX loopback
            is just composed of static, passive attenuators</li>
          <li>The receive gain is set to 20dB. Hence I assume I do not
            make use of the 6dB "digital gain" in the ADC and from the
            remaining 31.6dB gain I use 20. Hence I the "digital
            attenuator" should be 11.5dB if that answers your question?</li>
          <li>At a receive gain of 20dB, the noise figure is ~5dB,
            according to specs and measurements.
            -174+5+dB10(5e6)=-102dBm which is exactly what I measure
            without a signal applied.</li>
        </ul>
        <div>
          <div>
            <div>Thanks,</div>
            <div>Lukas</div>
            <div> </div>
            <div name="quote" style="margin:10px 5px 5px 10px; padding:
              10px 0 10px 10px; border-left:2px solid #C3D9E5;
              word-wrap: break-word; -webkit-nbsp-mode: space;
              -webkit-line-break: after-white-space;">
              <div style="margin:0 0 10px 0;"><b>Gesendet:</b> Montag,
                07. Dezember 2020 um 03:23 Uhr<br>
                <b>Von:</b> "cyberphox" <a class="moz-txt-link-rfc2396E" href="mailto:cyberphox@gmail.com">&lt;cyberphox@gmail.com&gt;</a><br>
                <b>An:</b> "Lukas Haase" <a class="moz-txt-link-rfc2396E" href="mailto:lukashaase@gmx.at">&lt;lukashaase@gmx.at&gt;</a><br>
                <b>Cc:</b> "Marcus D. Leech"
                <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>,
                <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
                <b>Betreff:</b> Re: [USRP-users] UBX160 TX "noise
                figure"?</div>
              <div name="quoted-content">
                <div>Hi Lukas,</div>
                <div> </div>
                <div>What setting do you have the digital attenuator set
                  to?</div>
                <div> </div>
                <div> </div>
                <div>Kind regards</div>
                <div> </div>
                <div>Marino</div>
                <div> </div>
                <div> 
                  <div class="gmail_quote">
                    <div class="gmail_attr">On Mon, 7 Dec 2020 at 02:05,
                      Lukas Haase via USRP-users &lt;<a
                        href="mailto:usrp-users@lists.ettus.com"
onclick="parent.window.location.href='mailto:usrp-users@lists.ettus.com';
                        return false;" target="_blank"
                        moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                      wrote:</div>
                    <blockquote class="gmail_quote" style="margin: 0 0 0
                      0.8ex;border-left: 1.0px rgb(204,204,204)
                      solid;padding-left: 1.0ex;">
                      <div>
                        <div style="font-family: Verdana;font-size:
                          12.0px;">
                          <div>Hi Marcus,</div>
                          <div> </div>
                          <div>Thanks again!</div>
                          <div> </div>
                          <div>I did now the following experiment: I
                            connected TX to RX back-to-back with 46.43dB
                            attenuation in between. I set TX gain and RX
                            gain to 20dB and transmit a single CW at
                            -3dBFS.</div>
                          <div>This means my output power is <strong>Pout=11.44dBm</strong>
                            (cross checked with spectrum analyzer) and
                            on RX I sould have Pin=-34.99dBm. Indeed,
                            calculating the RMS of the received signal
                            and converting to dBm, I get <strong>Pin=-35.0224dBm</strong>.
                            Spot on!</div>
                          <div> </div>
                          <div>The red line is what I receive on the PSD
                            (blue is the TX that I send):</div>
                          <div> </div>
                          <div><img
                              src="cid:part2.98E56B8C.ABE201A5@comcast.net"
                              style="width: 560.0px;max-width: 100.0%;"
                              class=""></div>
                          <div> </div>
                          <div>As you can see from the annotation, the
                            measured "SNR" of the received signal is
                            only 38.7dB. I think this is mainly caused
                            by the phase noise skirt (and potentially
                            the I/Q image).</div>
                          <div>In order to keep only consider thermal
                            noise, I add random noise to the original CW
                            (using <span style="font-family: Courier
                              New , Courier , monospace;">randn(...)+1i*randn(...)</span>
                            in MATLAB) until it matches roughly the
                            white noise floor of the received signal.
                            It's <strong>SNRoutput=50dB</strong>
                            (yellow line).</div>
                          <div> </div>
                          <div>Now, according to our discussion below,
                            at Gtx=20, we should have <strong>SNRoutput=72dB</strong>
                            (assuming thermal noise only).</div>
                          <div> </div>
                          <div>Where could the <strong>22dB difference</strong>
                            in SNR come from?</div>
                          <div> </div>
                          <div>
                            <div>Thanks!</div>
                            <div>Lukas</div>
                            <div> </div>
                            <div> </div>
                            <div>PS: I am aware of phase noise, DC
                              offsets, I/Q imbalance etc. But as you can
                              see from my plot, I am <em>only </em>considerung
                              thermal noise. The thermal noise of the
                              receiver should be orders of magnitude
                              lower (at least -102dBm) so the receiver
                              noise should not limit the results either.</div>
                            <div> </div>
                            <div> 
                              <div style="margin: 10.0px 5.0px 5.0px
                                10.0px;padding: 10.0px 0 10.0px
                                10.0px;border-left: 2.0px solid
                                rgb(195,217,229);">
                                <div style="margin: 0 0 10.0px 0;"><b>Gesendet:</b> Montag,
                                  30. November 2020 um 17:08 Uhr<br>
                                  <b>Von:</b> "Marcus D. Leech" &lt;<a
                                    href="mailto:patchvonbraun@gmail.com"
onclick="parent.window.location.href='mailto:patchvonbraun@gmail.com';
                                    return false;" target="_blank"
                                    moz-do-not-send="true">patchvonbraun@gmail.com</a>&gt;</div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div>
                        <div style="font-family: Verdana;font-size:
                          12.0px;">
                          <div>
                            <div>
                              <div style="margin: 10.0px 5.0px 5.0px
                                10.0px;padding: 10.0px 0 10.0px
                                10.0px;border-left: 2.0px solid
                                rgb(195,217,229);">
                                <div style="margin: 0 0 10.0px 0;"><br>
                                  <b>An:</b> "Lukas Haase" &lt;<a
                                    href="mailto:lukashaase@gmx.at"
                                    onclick="parent.window.location.href='mailto:lukashaase@gmx.at';
                                    return false;" target="_blank"
                                    moz-do-not-send="true">lukashaase@gmx.at</a>&gt;<br>
                                  <b>Cc:</b> <a
                                    href="mailto:USRP-users@lists.ettus.com"
onclick="parent.window.location.href='mailto:USRP-users@lists.ettus.com';
                                    return false;" target="_blank"
                                    moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                                  <b>Betreff:</b> Re: [USRP-users]
                                  UBX160 TX "noise figure"?</div>
                                <div>
                                  <div style="background-color:
                                    rgb(255,255,255);">
                                    <div>On 11/30/2020 01:54 PM, Lukas
                                      Haase wrote:</div>
                                    <blockquote>
                                      <div style="font-family:
                                        Verdana;font-size: 12.0px;">
                                        <div>Hi Marcus,</div>
                                        <div> </div>
                                        <div>That makes sense, thanks.</div>
                                        <div> </div>
                                        <div>Would you be willing to
                                          confirm if what I am doing
                                          here is correct?</div>
                                        <div> </div>
                                        <div><img
                                            src="cid:part6.51D4699E.111F5B1D@comcast.net"
                                            style="width:
                                            702.0px;max-width: 100.0%;"
                                            class=""></div>
                                        <div>
                                          <div> </div>
                                          <div>To first order, the DAC
                                            has an SNR of 98dB (16 bit).
                                            Then I use Fries' equation
                                            to get the NF of the
                                            following stages (for the
                                            filter and the attenuator,
                                            the noise figure is equal to
                                            its attenuation). The NF is
                                            dominated by the 2nd and
                                            third term.</div>
                                          <div>Then I subtract the NF
                                            from the SNR which gives me
                                            an output SNR somewhere
                                            between 92dB and 67dB. Does
                                            that sound right?</div>
                                          <div> </div>
                                          <div><img
                                              src="cid:part7.DAB3E0EE.CA68A69E@comcast.net"
                                              style="width:
                                              505.0px;max-width:
                                              100.0%;" class=""></div>
                                          <div> </div>
                                          <div> </div>
                                        </div>
                                      </div>
                                    </blockquote>
                                    For the attenuator term, just assign
                                    it a NF (in dB) of (31.5 - TXGAIN).<br>
                                    <br>
                                    The noise figure of an attenuator is
                                    just the attenuation
                                    value--similarly for the filter. 
                                    Just pretend it's a fixed attenuator
                                    with 0 gain.<br>
                                    <br>
                                    So the 'noise figure' after the DAC
                                    is just  2+(31.5 - TXGAIN) then
                                    factor in the gains and noise
                                    figures of the amplifiers.<br>
                                    <br>
                                    <br>
                                     </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      _______________________________________________<br>
                      USRP-users mailing list<br>
                      <a href="mailto:USRP-users@lists.ettus.com"
onclick="parent.window.location.href='mailto:USRP-users@lists.ettus.com';
                        return false;" target="_blank"
                        moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                      <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                        target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></blockquote>
                  </div>
                </div>
              </div>
            </div>
          </div>
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
  </body>
</html>

--------------94D3A2B2E2F14DF601594837
Content-Type: image/png;
 name="pdkeomomjiambgnc.png"
Content-Transfer-Encoding: base64
Content-ID: <part2.98E56B8C.ABE201A5@comcast.net>
Content-Disposition: inline;
 filename="pdkeomomjiambgnc.png"

iVBORw0KGgoAAAANSUhEUgAAAjAAAAGkCAIAAACgjIjwAAAACXBIWXMAAA7EAAAOxAGVKw4b
AAAAB3RJTUUH5AwHARMKmd7kNwAAACR0RVh0U29mdHdhcmUATUFUTEFCLCBUaGUgTWF0aFdv
cmtzLCBJbmMuPFjdGAAAACJ0RVh0Q3JlYXRpb24gVGltZQAwNi1EZWMtMjAyMCAyMDoxOTox
MAyXVnwAACAASURBVHic7N15XBN3/j/wD0NCQsDIfQgph1Q81rZaAcUqx1ra+quLJ17V6tqu
tbXFaq3rdlfKrn5bW8/Wo91vz+2l1KPW1lbWr4IHCFZtrdHiiSYgchMhB5kMvz8+dZpyiTAw
E3g9Hz58TCaTz3wyTOY9n2M+H6eGhgYCAAAgNkbsDAAAABCCgAQAABKBgAQAAJKAgAQAAJKA
gAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKA
gAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKA
gAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJIgEzsDnejtt98WOwsA
ABLy/PPPi52F1nTbEtLbb7+dn58vbh42bdokbgZ2795dVFQkYgaKiop2794tYgaIBP4K+fn5
OBVxKhIJ/BXy8/MlfpvenUtI0dHRIt4O0B+AuPcj+fn5EydOjI6OFjEDRUVF4h6E3bt3T5w4
MSgoSKwM0EsATkWcihI5FaWs25aQAADAsSAgAQCAJHTnKjvRvfTSS+JmICkp6b777hMxA/7+
/rNmzRIxA4SQWbNm+fv7i5iB+++/X9wMEJyKOBUdBAJSZ/H39xf3F0gIefjhh8XNgL+/v0Kh
EDcPoh8E0U8DnIoEp6KDQJUdAABIAgISAABIAgISAABIAgISAABIAgISAABIAgISAABIArp9
d9ZwGizLms1md3f3zki8jWpra5VKpUwm2l/ZQQ+CxAegBOiuenoJqfPGYJXJZOJeiAkh7u7u
IkYj4pgHQfoDUAJ0VyghiTwGK0gNohGAWHp6CQkAACQCAQkAACQBAQkAACQBAQkAACQBAQkA
ACQBAckB/PLLL4sWLZo4ceKTTz6Zm5tLV65bt+7EiRN0mWXZp59++sCBA/Qlx3Hz5883Go3i
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
CVqFElKLLkzuI8p+++1ocb4JewzDZGVlvfrqq3TkugkTJrzyyisDBw6k744fP57Gj5MnT/br
12/btm10/aJFi+j6S5cu6fX6cePGtSPx/v37L1++fNasWXl5eY0+2HS/gYGBLQ10/dVXX61c
ubKoqIjWzjEMk5qaOmfOnAEDBly/fv1f//pX04/cuHFjy5YtV69epS/r6uqUSiWfZ4ZhWJbl
C0M7d+6k8Y8QsmnTpj179tD19CN0y/3797dykAGgKyEgtaiNgaFTNS3x2I8kGxIS8uGHH77/
/vsnTpz48ssvhw8ffv78eTpRxdKlSxmGOX36dGFh4aeffhoYGFhfX08I6d+/v0wmYxhm5MiR
48aNowNRN6uVxAkhy5cv37lz5+rVq/v0+V3YbrpfnU6XlZVlv018fLxGoyGEjB8/fvz48V9/
/fUjjzyi0+kOHTq0adOma9eueXp67tu3749//CMfeHjvvffepEmT+NmtGg30Tmdw518ePHhw
wIABdHn06NF8QKIBkuO4b7755rHHHtNqtSEhIS0dBwDoMghIkiaTyRQKRWFhId+r7cKFC66u
roSQ7Ozsb7/99o033mAYhravnD17Ni8vj3ZsGzlypIuLS1xcXFVV1R//+MczZ87QK/Uzzzxj
35rSktYTpz799NPo6OhGE3w03W9FRcXhw4fttxk8eDAhpKSkhI5J+Kc//Sk5OdlsNufk5Iwa
NYrWLo4dO/bmzZu1tbWNQuaePXtWrFjBv/T09Lx16xZdrqiocHFxsa+EdHNzq6uro8sWi6XR
d2QY5k9/+lO/fv1Onz6NgAQgBWhDkrrExMTXXnuNlgOKioq2bds2YcIEQohGo3nrrbf4/mln
z549efLkH/7wh0YfT0tLk8lkzVZ/8bKzsysqKuzXtCXx/v37v/LKK6tXr242TX6/DzzwwP/+
3gMPPHDp0qVZs2bRkso333wTGhqqVCqjoqLy8vLoyhMnTri5ualUKvvssSx75swZ+5Hd4+Pj
v//+ezon5scff9yop/iECROys7Nra2sJIV999VXTTGZmZp45c4avigQAcaGEJHXvv//+jBkz
VCqVSqUyGo3Lly8fP348ISQ8PHzXrl3PP//87NmzXVxcFArFunXr+vXrR6vmeAzDfPjhhyNH
jpw8eXJLuxg3bty2bdvsL/RtTHzZsmWN5r9out/p06c3DZMJCQnjx4+/7777IiIizp8/T5u4
kpKSkpOTIyMjhwwZcvLkyYyMDFqq47N38uRJlUplXwby9fXdvHlzdHQ0bXaiHdB5o0aNmjlz
5uDBg4ODgxmG4YuGTk5OhBBnZ+eIiIiPP/6YL30CgLicGhoaxM5Dp6BzI95xxtg2bia6+vr6
+vr6pvMh0bdYlqWFifb597//PWTIEFqBJnjirWg2cY7jzGbzXe2x9Y+wLNuo23frBD8lqqur
idgzxpaUlIg4Y2zd6aXVpK+8cr/n/cvkPsNFyYPZbK6urhZ3xli9Xt/1M8bak/7lDiUkx+Di
4tLSJbWVt9qu2WgkVOItaTZxhmHuNv61/pFuPJuwo7AZ9VzvkWLnAhwA2pCA/OUvfxE7C9D9
OauCMVMftA4BCQAAJAEBCQAAJAEBCQAAJAEBCQAAJAEBCQA6F2fSO6tE63QODgQ9Yh3AL7/8
8s4771y/fr1Xr17PPPPMiBEjCCHr1q0bNWoU7a5NJ8ebOnXqmDFjCCEcxy1YsGD9+vXNdobO
y8s7e/YsXdZoNElJSYSQ1qe5a/ruXU2Lt3jxYrPZfMeZ8Tp7SkAAkDiUkKTum2++iYuLCw8P
f+qpp+Lj48ePH0+nobt+/To/H92+ffu+/PLL999/n748ceJEZmYmH40aDa+wYcOG3bt305nu
Ll26RFe2Ps1d03fvalo8cnt+o9ZnxuvUKQEBQPpQQpI0lmXnzZv32Wef0aIPISQwMPDll1+e
OXNmfHz8m2++SVceOHBg/fr1qampdLjrvLw8+2l+FAqF/XgcP/3001dffWU/Xk7r09w1fTc8
PLwd0+KRVmfG6+wpAQFA+hCQWmQtPy7Kfu3HVsnMzJTJZHw0IoQ8+uijtIrs8ccfT0lJYVlW
JpNlZmYuX778wQcfPHLkSFxc3OHDh2nxoimWZa9cufL111+fPHmyf//+y5YtUyqVzU5zx49R
1PTdixcvtrI9y7JxcXHe3t6+vr5ZWVnh4eFNs9F0Zjx+SsC5c+c++OCDdEpA/t1t27ZFR0dP
mDCh9XHnWpqKEKSAUQVxmKAPWoWA1CJTwUZR9msfkKqqqlqaOFUmk40cOTIrKys0NNTFxSUw
MDAxMfHAgQNxcXGZmZkffPBBXl4ePxT3xIkTCSHLli2jpRa1Wj1z5sx33nln4sSJ+/bta32a
u6bvGgyGdkyLR1qdGU/AKQHbfKQBQFoQkFqkHvmF2Fkgbm5uxcUtzhMYHx+fm5t75cqVxMRE
QkhSUtILL7wwadKkwYMHq9Xq0NDQp556ihCye/duuhAaGurv728wGOjHExMT1Wr1jRs3Wp/m
rum7MpmsHdPikTvNjCfUlIB3PKoAIE0ISJIWExNz5syZsrIy/rpcVlY2dOjQy5cvu7i4JCYm
bty4kRBC401MTExBQcHhw4dpfPL39+dnlOAXdDpdRUXFAw88QAihUzncunWr9Wnumr7r7e3d
7mnxSAsz4wk4JSBfegMAx4JedpIWGBj45JNPzps3jxZrjEbj008/PXr0aFo/NnLkyOzs7IMH
D9Ku24SQxx57bPXq1fZtToSQ2bNn88vnz59PSUmhJZVdu3bdc889/fr1a3aaO35avKbvdnBa
PNLczHgCTgl4h2MKAFKFEpLUbd68OTU1NSAgwN/fv6ysbMKECVu3bqVvMQwzatSo+vp6vsYs
KSlpz549tBmG9/HHH/PLSUlJ48ePHzBgQGRk5JUrV3bs2EFamOaOnxav6bvtmxaPtDozXmdP
CQgA0ocJ+qQ+YxXFcZzRaGx2gr52YFmWTvfXaBetTHPX9F1hp8XjdeqUgG2BCfoEV/l1mPkP
X7reOqBUKl0jGz9/1jUwQR9xhMsdSkiOgWEYd3d3oVKTyWRNfxWtT3PX9N1OmhavU6cEBLEw
qmByS+xMgOShDQkAACQBAQkAughnLBI7CyBpCEgA0BUYDPgNd4I2JJKfn0/b+gAIIfn5+dHR
0WLnAqAn6uklpOeff77zrj60e5WIamtrWZYVMQMsy9IHkkR0t3+Fps/eAkDXQAmpszpBit7X
lhBSUlLi4eEh4sgF6GsLAG3X00tIAAAgEQhIAAAgCQhIAAAgCQhIAAAgCQhIAAAgCY7R9ejS
pUuFhYVeXl5Dhw61X6/T6QoKCjQaTWRkpFh5AwAAQThAQFq5cuXBgwcffPDBCxcuuLm5ffjh
hwqFghCyd+/e119/PTY29uTJk8nJyampqWLnFAAA2k/qAen8+fPbt28/cuQIHb1/3Lhxe/fu
nTx5ss1mS0tLy8jIiIiIqKysTExMTE5ODg0NFTu/APA7nFFPBw1iXINtpd+KnR2QNKkHJA8P
j3fffZefSyYsLKy4uJgQcvjwYQ8Pj4iICEKIl5fX6NGjjx492iggFRUV7d69my7fd999/v7+
XZlzlmXr6urEHaegrq5OJpOJOFiD2WyWwkGora0V8cHY2tpaJycnETMg7qnIGWsJIXV1dYSt
UxEiVjZ67Kl48+bNM2fO0GXpD4sl9YAUGBgYGBhIl69du3bo0KEFCxYQQqqrq/v3789v5u7u
fuHChUafzc/P55d79+7du3fvzs/vb1iWtVgsdLJwsUgkA1LIg4jxwGKxEEJoPbMoxD0VGZbl
WNZisbg5E7PZzIiUjR57Kl67di0vL68r99gRUg9IvJs3b86ZM+fZZ58dMGAAIcRms9nPncow
DMdxjT4yYcIEEQclY1mWZVkfHx+xMkDzIPrQQc7OzuIeBLPZ7OPjI2JAorsWd8ZYEU9Fzmg2
yGReXl5ubGmDUqkWKRs99lRMTExMTEyky9IfRVqK3b5Xrlw5dOjQoUOHjho1iq75+eefJ0yY
MHv2bFo8IoQoFAqbzcZ/hOM4DFYGAODQpHgRnzFjBg3pNMbk5OSkpqauWrUqKSmJ38bPz+/s
2bP8y6qqqrFjx3Z9VgEAQChSDEjh4eHh4eF0WafTLVy4cO3atQ899JDVaiWEMAzj7OwcFRVF
CMnOzo6Li7t48WJOTs6//vUvMTMNAAAdI8WAZO/zzz+vq6t75pln+DUzZ85csWIFwzBr1qxZ
vHhxRESEVqtdvXq1uLXDAADQQVIPSMuWLVu2bFmzb8XExBw7dqyL8wMAAJ1Eip0aAACgB0JA
AgAASUBAAgAASUBAAgAASUBAAgAASUBAAoBOZDPqGddgsXMBjgEBCQAAJAEBCQAAJAEBCQAA
JAEBCQAAJAEBCQC6CGfSi50FkDQEJADoCs4q9LWDO0BAAgAASUBAAgAASUBAAgAASUBAAgAA
SRBggr6ysrI2bunr69vx3QEAQLckQECaPn26Tqe742bOzs7nzp3r+O4AAKBbEmYK823btkVG
RrayQV1dXVxcnCD7AgCAbkmAgBQWFubu7q5SqVrfLDQ0tOP7AgDHgodhoe0ECEj/+7//23Rl
ZWWlTCZTq9X0pUql2rdvX8f3BQAOB4/EQhsJU2VXXl7+4osv2my2d955R61WjxkzhrYq9evX
b+/evYLsAgAAujcBun1XVlaOHDny8uXLJSUlUVFRixcvtlgs+/fv/+KLLy5cuPDSSy91fBcA
ANDtCVBCSk1NDQoKOnjwICFky5YtGzduPHbsmI+PT2ho6Pr161esWNHxXQAAQLcnQAnpxo0b
AQEBdHn8+PGEkN69e9OXgwcPNhqNHd8FAAB0e8KM1ODs7EwXnJycCCEMwzRaDwAA0DoMHQQA
AJIgTC+7/Pz8WbNm8S/nzJkjSLIAANBzCBCQevXq1atXr/Pnz/Mv+WVCiJubW8d3AQAA3Z4A
AWn37t0dTwQAAHo4AQJScXFx6xv06dOn43sBAEfHGTGMELRGgIA0e/bsRqN9u7i4MAxjNpsJ
IUql8qeffur4XgDAoTEYQAjuRICAtH//frqwb9++9PT07777js57ZDKZlixZwj+TBAAA0AoB
un073/bPf/5z7969/Cx8rq6uW7Zs2bNnj8Vi6fheAACgexPyOSSr1SqXy5uuR0ACAIA7EjIg
DR48ePbs2QaDgb60Wq0vvPCCp6cnPwkFAABAS4R5MJb65JNPkpKSoqKi6LNHdXV1arU6JydH
wF0AAEB3JWRAIoRkZmYWFxeXlZVxHOfj46PRaIRNHwAAuisBquzGjRt38eJF/mWfPn3uv//+
IUOG2Ecjo9E4dOjQju8LAAC6KwFKSCaTqaCgoPVtamtr6WNJAAAAzRIgIDEM8/LLL99xMzoz
BQAAQLMECEiZmZkdTwQAAHo4R5oP6aeffiorK7Nfo9PpDhw4cMcKQwAAkD6HCUiXLl164okn
7IfF27t377Rp0/bv379gwYKNGzeKmDcAaIm1FAOqQlsJ3O27k1it1iVLlvj4+PBrbDZbWlpa
RkZGREREZWVlYmJicnJyaGioeHkEAIAOcYyAtG7duj/+8Y9arZZfc/jwYQ8Pj4iICEKIl5fX
6NGjjx492igg5efn//Wvf6XLSUlJ9913XxdmmbAsW1lZqVQqu3KnjVRUVNhsNoVCIVYGzGaz
wWCQycQ8zSorK2UymYh5qKmpIYSwLCtWBsQ9FdnaWrmLmZ6KroSUl5eLko0eeyqeOXOGb+bP
z8+fMGFCV+79bgl/aDiOYxghawLz8/Pz8vJ27do1f/58fmV1dXX//v35l+7u7hcuXGj62ZiY
GLoQEhLSxT9IlmUVCoW4AUmpVIqeB4vFIm4G6BEQ8UpksVgaGhpEPAjinoqsUunEyOipSAgR
8Tj0zFMxJCSEvwxKn2CHJi8v75VXXikrKzObzc7Ozt7e3gsWLJgxY0YHkzUYDCtWrHjnnXca
rbfZbPZhj2EYjuMabRMdHS3i7QDLsrW1te7u7mJlgBBCMyDij1Amk7EsK+5BcHNzc3d3FzEg
0bKRiAdB3FOxViZzYmT0r2AU7zj02FPR3d29b9++dFmvl3p7njCHZunSpV9//bVGo5k/f/7I
kSMLCwvffffd9PT0Dz744MCBA3eb2sqVK3ft2kUIcXNzi4uLGzhw4LVr165du1ZZWanVajUa
TWRkpEKhsNls/Ec4jnNxcRHkuwAAgCgECEhXrlz5+uuvP/zww9jYWLrm/vvvT05Orq6ujomJ
WbVq1SuvvHJXCc6YMSMxMZEQIpPJcnNzz5079/nnnxNCioqKsrOz1Wp1ZGSkn5/f2bNn+Y9U
VVWNHTu2498FADqVtVQn98MQl9A8AQLSiy++2LdvXz4a8Tw8PP72t79t3br1bgNSeHh4eHg4
XY6OjubXz58/f8qUKWPGjCGEREVFEUKys7Pj4uIuXryYk5Pzr3/9q0NfAwA6GaMKdnbHiC3Q
ImHGsvPy8mr2rfj4+DfeeKPju2iKYZg1a9YsXrw4IiJCq9WuXr3avlM4AAA4HAECEsdxzU4U
SwiRy+UNDQ0d3wX17rvv2r+MiYk5duyYUIkDQGdwdieFld6eYmcDHILDjNQAAADdmzC97PLz
86dOnSpIUgDQzYR6KWvEzgM4BAECko+Pj8lkaqmHu7e3d8d3AQAA3Z4AAWnbtm0dTwQAAHq4
zmpDqq6urqys7KTEAQCg+xEmIJ06dSohIaGwsJC+HDNmTExMzIgRI6ZMmSJI+gAA0O0JEJCu
Xbs2ffp0hUJBn0ZaunSpTqf76quvjh49euHChWeffbbjuwAAgG5PgID03HPPDR8+/Pvvv1er
1YSQffv2PffccwMGDPD19d22bdv//d//NR32FAAAoBEBAlJ5efnf//53unzjxg2WZSdPnkxf
ajQaQkhtbW3H9wIAAN2bAAHJftRtOhNUnz596Es68L6w0yMBAEC3JECo6N27d0ZGBl3+6KOP
aKmI2rdvn0wmE3cOEgCQDmuZTuwsgHQJ8BzSP/7xj7/85S8mk6moqKi4uPjbb78lhHAcd+TI
kfT09KeeeqrjuwAAgG5PgIAUFxeXlpa2fv16Z2fnVatWRUREEEJeeumlb7/9Nj4+funSpR3f
BQAAdHvCjGU3Y8aMRrOVr1u3bsWKFR4eHoKkDwAOylqql/sFi50LcAyCze5eXFxsNBq9vLz4
uZEQjQAAoO2ECUgTJkw4d+4cXZ44ceJrr70mSLIAANBzCNDL7tNPPz137txnn3128uTJN954
Y9euXdeuXet4sgAA0KMIE5Duu+++YcOGubu7JycnBwUFvf322x1PFgAAehQBAhLLskqlkn/Z
q1evixcvdjxZAADoUTCGAnSi+oJ8sbMAAA4DAQk6UcU7S61bnxM7FyAVOrM34+Ykdi5AuoTp
ZZefnz916lS6/MsvvxBC+JdOTk6YUrYnY0ubn9seAKARAQKSj4+PyWTS6/X8S0II/xIjtUBU
YQAAIABJREFUq/ZkGLgMANpOgICEAhC0wskz0Fqqk/tp7rwpAPRsKL5AZ7GW6pw8A8XOBQA4
DAQk6CzWMh3xChA7FyAtLGpxoWUISNDp0JIEAG2BgASdDIUkAGgbBCQAAJAEAXrZFRcXt75B
nz59Or4XcDhsqV7uq0F9HQC0kQABafbs2Trd7y46Li4uDMOYzWZCiFKp/Omnnzq+FwAA6N4E
CEj79++nC/v27UtPT//uu+98fX0JISaTacmSJb179+74LsBxOXkGsqV6MkjsfIBInN2drpt9
cBmAthCgDcn5tn/+85979+6l0YgQ4urqumXLlj179lgslo7vBQAAujchOzVYrVa5XN50PQIS
QE9j1Oa0voHhUEbX5AQciJABafDgwbNnzzYYDPSl1Wp94YUXPD091Wq1gHsBAIkr2bRInzaZ
j0mhXsqmG5RsXnTHoAU9jTCjfVOffPJJUlJSVFSUm5sbIaSurk6tVufk4Jzr0Zy8AtHRrqcx
aXPlvncYvVDuqzFpc1WDYrsmS+AQhAxIhJDMzMzi4uKysjKO43x8fDQaDKnZc1nLdHI/jc1s
Fjsj0NWsZTrvlCVN402IpytdMGlzXQeNsJbiTgV+R+AHYzmO27Fjx/LlywkhRqPx1KlTwqYP
ABJnLdXJfTWug0bQGrlmy8fWMp06IQVFZ2hEyIBkNBoHDBiwffv2y5cvE0KKioqmT5++adMm
AXcBABJn0ubK/ILlvppm52a0luoNhzLU8SktbQA9mZABaeLEiU899dSxY8f69+9PCElMTHz/
/fe3bNki4C4AQPrkvhq5n0bmF9xstwWjNgdNR9AsIQNSSUnJ008/bb/moYcecnZ25vvdAUC3
R9sOCSGqQbHN9u2mDUhyP421TIdmJLAnZECSyWQmk8l+Dcdx9fX1MpnAXSfAIeBa0zPRNiRC
iDo+pem7hqztMr9gGrFcB41AMxLYEzIgPf744+PGjausrKQvjUbjE088ERQUpFKpOphyZWXl
wYMH8/LyGq3X6XQHDhwoKCjoYPrQSe7Y9xe6MRp1GtXaWUv13ilLRMoRSJ2QZZdXX3316tWr
I0aMIITMnTvXZDK5urqeOHGig8lmZ2cvX748Njb22rVrCoXiP//5D8MwhJC9e/e+/vrrsbGx
J0+eTE5OTk1NFeA7QCdAUalHMWlz+ZCjTkipztzVaAO+AenXfg0Y5xBuE7gy7eOPP75x40Z5
eTnHcR4eHiEhIR1M0GazLV++fMOGDdHR0YSQxx9/PDMz89FHH7XZbGlpaRkZGREREZWVlYmJ
icnJyaGhoQJ8BxCUk2cguXlL7FyAOJoWkdUJv9Xj0Wakrs0RSJrwrTuBgYGBgYH8y8rKSi8v
r3anlp2dHRQURKMRIeSbb76hC4cPH/bw8IiIiCCEeHl5jR49+ujRo40C0u7du/Pz8+nyrFmz
7rvvvnZnox1Yli0rKxO3/ay0tNRisSgUClH2bjab62uqjXVGxmwuKSkRJQ+EkNLSUkKIiH+I
mpoaQohZvAeEu/hUtJbpKjg5+fUvLmf6Dq2uri5tKLVYLK5mc0PkQP5kqJf34i6fsnbJuWE2
m0XvXSXKqXjmzJlPPvmELhcVFU2YMKEr9363hDw0Y8aMGT169IoVK/g1BoPhoYceOnfuXLvT
rKqq0mg0K1as2LNnj7Oz83PPPTdv3jxCSHV1Ne1cTrm7u1+4cKHRZ6OjoydOnEiX/f39PTw8
2p2NdmBZ1mw2d/FOG7FYLL1791YqG48k1jXKZTIXd3dCiOyWTMTjUFdX5+HhIXrPGhGPQFee
ig2VN255BtrvyxIYJnN3NzO9e/fuXeQUFOru7nz73frw/hU/fNs1GaM3BOL+HkU5FSMjI59/
/nm6vGtX4+pTqRHy0Fit1u3bt1+8eJEPyB136dKl/fv3r1ix4p///GdBQcETTzwRGRn50EMP
2Ww22pJEMQzDcVyjz9oXrboey7JKpVKsYEApFAoR8yCTyRhnmcxZJpPJRDwO9CCIGJDodxfx
CHTlqWgoOKHsE2q/L5tMJpPJFHIFXSmTyRS333UODCOVJV12ZCTye+ziUzEkJIRvOmnaL0xq
BB466L///W9ZWdnIkSM7ksjKlSuHDh06dOjQUaNG3XPPPSEhIVOnTiWEREZGPvzww/v27SOE
KBQKm83Gf4TjONFvgQGAoGsldIDAF3Gr1fr999/PmzcvMjIyMzPT09OzHYnMmDEjMTGRECKT
yaqrq+3f4ktFfn5+Z8+e5ddXVVWNHTu2AxkH4VnLdG4j/kRqfxE7I9B1jNoc2tu7Lfh+4Ri4
ASiBS0jU+++/P3PmzKSkpOPHj7fj4+Hh4bGxsbGxsdHR0QkJCZWVlYcOHSKEVFZWHjlyZNy4
cYSQqKgoQkh2djYh5OLFizk5ObS7OQCI665KSDK/4M7LCTiczqrmWrFiRVBQ0PPPP+/s7NyR
dORy+aZNm5YuXfruu+9eunTpz3/+c0xMDCGEYZg1a9YsXrw4IiJCq9WuXr3ax8dHoLwDQDvZ
P4TUFqpBsZgVCXhCBqR33nnH/sGjefPmhYWFrVmzpoPJDhs2jJaQGomJiTl27FgHE4dO5xVg
Pft/YmcCuoK1VMcPZNdGroNGVGSs9SYYuwEIESQgXblyhRASHh6uUCjoMi80NBTTTwD0ECZt
brPj17UCk1CAPQEC0jPPPMNx3IEDB+bNm3fz5s1G7zo5OWm12o7vBQAk7q56NFDo1wD2BAhI
mZmZdKHZijUA6Dna0ecb/RqAJ0BAunbtWusbdHxEOwCQvrvt0UChXwPwBAhI8+bN0+laHCHR
2dm5I0MHAYCjuNseDRT6NQBPgIC0f//+jicC3Q9bqpf7asjvH22G7sqozXEd1M5nAdGvASgB
AlIHnzQCgG7g1/uPu4ehhoAn8IOxBoOhpqaGH+eUjiS0cOFCYfcCAFLT7p5ycj+NzC8YHe2A
CBuQdu/e/de//rXRSh8fHwSkHg4VMj1B+3o02H8cAQmEHMtu3bp1zzzzzLlz5/z8/DIzM0+c
OBEdHT1//nwBdwEOBxUyPUT7ejRQ3ilLjNocYfMDjkjIgGQwGGbNmuXs7BwQEHDs2DG1Wv3R
Rx+9+eabAu4CACTIcCijpTEabMY7l48xXgNQQgYkuVxOp4eYPXv29u3bCSHOzs5ubm6izxwM
AJ2qJmt7KxVuOvMdBj7mm5GEzhc4GCEDUkRERHp6utFovO+++65cuWKz2a5du1ZVVaVQKATc
CwBIilGbw5bq1Ql3N4pdI73jp97c9KJQWQIHJWRA+vzzz48dO/b666+HhIT4+voOHDgwKSkp
KioKAQmgG6vIWNuR7gyUOiEFhSQQspcdwzA//PADXT548KBWq3Vxcbn33nsF3AUASIpRm2PS
5mrSd3Y8qd7xUysy1qrS0deu5xL4OaSff/559erV/HNIhBCGYT799FNh9wIOwVrW4oBS0G0Y
DmV0vHhEuQ4aUbJ5ER5I6smEDEipqanff/99QECA/dgNtJsD9ExyPw2prkZk6sYMWRlhW/Ja
3ybEU1nB3jkpuZ9GHZ9iOJSBgNRjCRmQsrOz//3vf8fFxQmYJjg6uZ/GJHYeoJPo0iZ5pyxp
++NH180+4a32AvdOWYJCUk8mZPFFJpMNHDhQwAQBQMrYUr1Q9XWU3E9DW5IETBMciJAB6R//
+MfLL79ss9kETBMApMlwKKPdw3u3wnXQCDwk22MJWWX36KOPvvzyywMHDnR1deVXMgxz6tQp
AfcCAFJQk7W9d/xUwZPFWKs9mcABydPT86233urVq5eAyYKjk/tqrKXtH+gMpMmkzQ14bkNn
pIw5ZHssIQNSZWXl999/HxgYKGCaACBB9AnWTrrJwByyPZaQbUje3t7Xr18XMEEAkCa2VN/S
aKodh7FWeywhS0ifffZZfHz8okWLHnnkEfv14eHhAu4FAETX9gYkzqTXWXxUdzOtNG1GMhzK
6OD4eOBwhAxI06ZNI4Rs2LBhw4bfapadnZ3PnTsn4F7A4cj8gjsyWQ5IkFDDBbXEO2VJRcba
bhaQ2G0ra+65V9iO8t2MwDPGenl5CZggOC5rqa7nTM3X07psVGSs7bz6OorW2nWnvnZGbY61
4ITh8mkEpFYI2YY0duzYTZs2CZggdIS1/LjYWWiGtfw414YZ2+5WyaZFhkMZ/MuKjLWtP1zZ
+qjS1lJdowXDoQxd2qSWdl2yedHVBTHWUl0rm3UD9GgYtTl3HL+OM+r5048z6q+bvelyqKey
jfuS+2m8U5bc3PQiPapCPSrbGedeGxkOZTj1HUK8AnRpk3Rpkyoy1hq1OfQf3aAiY639OWzP
WqrjT8XuTcgSEsuyISEhAibYBUwFGxhVsEIzuX0frzu9lBDiNuR3s+JadDvk3sOJS0C7c2Ut
P86Z9O3OFSHEcGw6W3G8wX8O8VjW7jzIfYa3OwPWMp3ML7hpmrdypjOqYI8xR1r5LGfU24z6
VvZuLT9e9+NSwgWZLwTQO2hrmY6v4TEcyvj1R55BCCH13mFWZoi56Ad5gJPlio5wQTVZ22mb
ue+fX5IHOFkucfwH6YVP5hesSd9JQwu98tIZFnRpk2g9lVGbI/fVWMt0Nze96DpohCZ9Z0XG
2pLNi9hSveugESWbFgUs3GDR7bBc3+k+5E1C3Gm2mz3ZrKU6a5nOvhzQvvIWPesY1W/HnDPq
rRXH7+osqju91FpxXB37hX06FD046oQUQ/Z63z+vbz2HtaeXcia92wNvtuUU4oz6prsjhNA/
ij5tsrVMJ/fVuA4a0cHSUkP1D7WXP3NWBTf6wd4Vi24H4xp8tz8Na6nOpM1lJi/z9vGxFf3A
lh8nhBgOZVjLdGyp3n/herZyF8fuIOSNkk2L1Akpjb4pPbW8U5bQY9L0DLGWHzcVbFSP/KLd
30sihAxImzdvnj17dnFx8cMPP2w/vqqkohS9TCjumcS4BnMmvbU8jzPtpGvoD8P+B1x3eqnM
J4ausZYfr9ftdBvyJv+jtVYct+h20N8SvYZyJr3l+k5CiKlgo3v8Iaa+hJDGvzTOqLfodhBC
ZN7DTQUbXSNTm57cdT8u5Yx6zqjnjEWukan8Liy6HZyxyGbUuw95k1EF879ket9HUzMVbJT5
xHAmvceYIxXnP6o/OdemCnbRTJL7DOfjHGfUVx8YJfMeLveJkXkPZyuOu0Yuoulby/Pch7xJ
LygKzSSFZjK/i0YXOxozOKOev/o4q4IZVTA9UNYynbO6uDYrQR4y33r7U/W6nYwyhnF1qju9
1P6iQD/iGplqrTjOlufZjHrTz9dcB4fIvSbaaolq0AhGFUzvEE3aXGuZztnrK+NPrDzwOGcJ
NBw+br6q67P0S0P2+urMaYx8YsnmRcHpO+S+mpvvxroOiuU+WVcRplHdL2NrnKylOnPBg94p
S1SDYg1HXqq/8XLdac56k7NWHHcdMLkiY61n8kPkdiHApM0N25JX/OYUrrbBY9xUeYATW6q3
6HbUnV5qvhjA1TbIA294ThjhNnQaIcQ7ZYk3WcIZ9bbaBn3aZNP5Ly1Fbyk0kww507mBWwkh
dVdXEUKs5Xly7+G22gaTNlcRril+fZG1TKeOT6ncsdh72jRreR5hoysy1vZ+RC7znGS5bPN4
fCrhgpzdnexDC70m8rcsvx7wiuMW151ynxjXyEV0M0POdLn3cMv1nfK+zzH1SlPBDs5YZH/Y
604vZVRB/J9e5j3cotvRK/YLQ870RncMnFFf+0OG+4gQtvot7xmjuPpddafzGVWQQjPZkDNd
oZnE75QQYirYQAhRaCbV63Y2Pbctup3W8jy5Tww9teiVlJ6u9KvZ/wBdB9/jYZrqPmxKyeZF
nLHo1xsRQtSxX5gKNjKqIJn3cLnPcLpHRhVcd3opowqmgZCPHPQnz7Ks3KR3Hba+7selhmPT
CSHuQ940FWxsGpzoKe2sCubTpyvpHk0FGxlVsK1yPO2bLvfVBCzcQP8Kdac2WIsDFX2dCVPk
PuTNqm+2E0JoxTW9oTHcG60KCKgte0U1eDghJerEaZxJT7ig0g/WuD14Su6ncR18D+PudOvY
dPNFTd1pf+W9Je5RU1wjF1muHQ9atqFq3zp1QooubZJJmxucvqOhfrfMJ4ZxDaZ/fXrkZd7D
6Q+Nv3DxX4o4AqeGhgah0oqLiyspKWm0UqxODW+//TZbkTf3oWuEENfIVHoVtuh20FOQXvWc
VcEumknOqmCbUW8q2EgX6E+a/sjpNvRHYv+/i2aSqWAjIcT59jWabkkIkfnEyL2HG3KmK/7w
muHiZ65MNb8ZPXtMBRvlPjHW8jy24rhrZKpFt5P+fujPQO4Tw6iCTQUb3R54s+7HpTTAKDST
LLqd9IsQQhjX4Lofl9JLktx7uItmEv2V0s3k3sNpHhhVcElJiRv7i0tDueX6TvpFGFWwa2Sq
5fpO18hUZ1WwqWCjzainObRWHFdoJjGqYBpT7cMSjZ10G8Y12DUyte7HpdZSHWfoIw9gej20
xlkVXPHVQ/SuzXLlegMbzVYcV90vUwx+zXp5s+XKda+J2+U+w6sPjKrZbyWEOKuL3EeE0swb
Dh7j2LcZZYyzupgz6uv1w1QDplRkrJX3KSaEqAaHEKaIUQVX7axXRDDOvYoJITKf4XLPSYoI
hi3PY1RBNEgTQkw/X7OZ9L4zjzm7O/HXlNqTG+R+GnqQDcem05XW8jxnVbDMa6LcV0PDfO2J
DI9Htpkuviz3Hm4t09X83zG5T4znnx6y6Hbevvr/+ldoqJ/g3PsEZ9LTP4epYCPjGkwIoX9W
9cgvSjYtcvb6yiNpG71W1l3dzskDevebSU9CQ870qp31roNGcNZdcn9GNWCKzahny3S3cq/J
/YLlgTfkfhprcSBnzlOE32Mt4QhTRAjhahsU4fe43vsGYYos13cSLsii26EetYb+sey/C73c
02OiHvkFZ9RXHp7C1JfQ3HLGInp3Qg8F/YPSb2ctz1PcM0mhmVx3eik9n2m4qju91KLbYatt
UA2Ywgcw+pPhD4vHmCP0km2tOC73Hu425E36TdWxX5z5ZkL1g5n93SweHh4Lvro6M+xa4uA/
0J8PvYzSeztTwUa593C6xu2BN2nijGuwsypY5hNTe+JLzpznrAr2Gn+U3hMoNJNlPjH8wae/
BXpPQ38+9DIt9x5uM+pdI1OtjI+h3j0gIIDelrHlefy7nEnPyCcqwjV8aowyhqttkAc40fOE
UQVZdDutxYHWiuOqAVMs13fQM1zuz1hvcsafbIqwe1RDSjhDH0ZdrAgZYfr5GqMuthYNc+5V
bC3Tyf0ZRfg9jGtw/a1CtwfeNOXP8hhzhN6VEkKs5Xn0L0hPS86kVwS9YC3PY6t2KjSTrRXH
CRdECCFMkc3Qhy0/zrhMdIuaUrlrKuPuRAhxdnNSj1qjCBlBCKEXEHpPSW9HaLilgZxxDf7h
bJG2fsrzzz/feRfeDhIyIEkKDUipL7/OqIINx6ZzJj1n1NPI1Gz9AMXfHFl0O1wjU+lvj9wu
fNBt6MfpnZ37kDcJIU3rlyy6HYYjL3G1Deq4F+k9C80A/5snt28G+TtEYvc7tK/rsJYfZyuO
83dq/Er6CzTkTCeEuEamNqquoUpKSjw8PJRKJb1YuGgmEUJu5UxXaCbb3xjS6wst39DEK7Zt
M2lzw7bm0Shu0e20VUdZSzjVoFibSc9Wv2W5bGOUMe6xcq6uwXwhgBBi0ubSShWjNkfup6F1
LDa1b3V1taf1qKlgI2fUmy/b+rx43VqqK9m8iC3Pc4+awtXvIoTIAxiPMUdMBRsb2GjL1euG
QxnB6TsqMtbSdGqytrsNuWm+el01OIT+FRpVQ/F1U5xRX3tyA2fJI4Twv8biKz/43fOATCYj
t+9zZT4xnFFvf1NP/xy03PZrCTJzGiFEETKCXlv5vzu/R/s1NAOEELY8jxBirThu/Planxd/
fSaPVp96/enqry+PvMRZ8uTewwkhMp8YulKhmdyolzNf2HIfEeL24KK6E18y6mK2/LjcT3Mr
9xpn6OOZ/BBnzrPVNjAuE2m9H60wdJLlE0JsdQ3uQ1/8tYan/Hh5eXlg/8f5QjYtD9FwRa/L
TYu/zqpgQ850xjXYpM2Rebwg99U06vPG1xnQ3xe9UyGE8CeqqWCDRbezsNJsH5Di+nrMiWr8
7DzNhqlgo8eYI/RT/E+AL5rU/LeQbuz355cY1a+dwputlqQHvFfsF7TGglZkmc3m6urqgIAA
+8NrLdOZzu+wXL2uvLeEMEWy3i8owjVcbYPuH6neKUsMhzJC1u4s/ehFzqRXDYo1X7KpBsVW
ZKyVBziphtyUeQ+nd2ZcbYPNqFcEparjXqQVp7baBrbq14KgzHs4/alaK47XXdnOWEsaFSgb
VTbwVSa0zpwz6g2H16tHv0j/QLTkzShiTOe/rMm0Bjy3gdY/+y9c36iWj//l0jsGWoFxbN9b
P97QICCJ4O233yaE0EPf7K+uJXe1cSuJXFs6nHW/P2j2K3es+G7UZNJSlXqz6H1WS+0EN86d
9gwfoFT+riXZdP7LBi6olVzRNhi5n8aozaFNJnSNfU9ctlTPV2eXbF4k99V4pyyhbSrWMl3Y
ljxaWuKvAteWadyjplhLuF/rN243nPCXm0bhgUe35IxFXP0uWlHZ+gFpGjz0en1AQAANSG3E
l1ZbylUrH6R/yguT+/AH4ZY+izPpe9/7BN1Glzapd+JD7lFT2nGCmQo2WMvzXO99g6bMGfWl
H6wht7sA0GMl99Xo0ybTYU+tZTpN+k7DT4crMtYGp26S+2n463jTvfMtE0Ztzs1NL8r8goOW
baz6fonce7g67sVWcmXR7WDL85ptmOGM+tkf/Pepx8a3HpDaiJ5s9DykrYBhW5uZiqnpOUAI
uXX94i3dxT4jx9LmnJqs7SZtLo2ycl+NIoIx/nzdcuW6IStD7quh13fDoYyarO2EkKYd3O0P
YNt/sMVXfujtdMktbNrdf/Xf7dpm1Jt+vk5uN7MZtTkVGWub7YXfqDXa/qooTQIHJKPR+Pe/
//3HH38khPTu3Xvz5s19+vQRMP22E/fQG7U5Nz9fbevl6xeT1HnPUjTb/mmfh+K9H7i7u9NL
P98mrEubRMOJOj7FpM2lkUbupynZtMikzSWEWMt0wek76M2gUZtDpwPgG1RbR3sT8FniAxLt
9sZfo7tSOwJSx9GJguhxqK6uJoR4eHjQt+xjVaeyluoMWRm07e2W7qLMUM6/pU5IadRNrmTT
IkNWBv2708ybtLk0hQ7mNmHLqbRHwgQJSIQQozZHnzZZHZ8SsHADf5BLNi2ylukCnttA76L4
049u7DpoBO2BQksSFRlrVYNi1fEpNHh35QnZSaeitVSnT5vsv3C93FdDf6otfSnpByQhD011
dXVMTIy3t7dGoyGElJWVJSQk9Mwp+9hSvdxX0xA00KjNueN1nA7j3+gc4n9XfGGC3sDyL+mP
sCJjrcE3QzUoVp2Qwm9g0uZWZKyV+QW7PPAIo1T2HhRr1ObQ7rO0EizguQ0mbe7VZ2PU8Sly
P40+bTIhROYXHLY1z74Djzo+RR2fUrJ5Ebl9L3ZHLUVH75QlPerxi5aGB+3UIeAaoROw0l5q
sgWbwv44kT9DKjLWlmxaRGfDY0v1Mr9gua+GVpOaBuXKfTWqQbG0iKBOSJHUI1aqQbF8gOwd
P/XmphfVCSkmba46IYWexjQyyfyCaQfIsC15dMJis9lckbHWpM3lH+mV1PfqCLmfxn/hevp9
VYNif43BfhpH/MUJGZBSUlKmTJmycuVKfs2ePXteeOGFn376ScC9OAT6G3DqO8R08GP7WzZa
5tCk7+Sv+3xXY/tgQFfK/IL5Eb3UCSk0btEqBddBI2gbD41PFRlrrWU6/iEG10EjgtN3yP00
JSUlag8PpVJJw1XJ5t9uJOV+vzUJ0KISfWn/K6XLdPsuOWzdR0vDg3bqEHBN0auSUZvDRkaT
239QutKkzS3ZvIj2JPyt33nK7+bck+ZACb/dMN2usKIVd3ylJa03Dnhug/0pzZjN1cN+qdi+
spNGKBeXalBso9rLmqzt1k06WkPuQIQMSKWlpYsXL7Zfk5ycvGLFCoPBoFarBdyR9FlLdapB
sUY/jX/6Dn3a5F/Dw6ZF1jJd7/ipdIHWm9EiFH2gkn/UoCJjLS2A0/tZQoghK8N/4Xr6Ebmv
hvZsJoTQ0CJ/TkPrW/i40pTcT2MfCBu91UrIQTRqn2aHB+36IZTUCSmqURMbdX/l/+K0eofP
kmpQLBnUlbnrKHVCiv0JT7+L/8L1pLnCujwySiNGpXEXowfEddCIks2LaA2e2Dm6CwLXZprN
5qZrurj6XhDNVqPxb9VkbVcNiqV/aaM2h7bEaNJ38t0BrGW63hNTjRyR+2mC03fo0yarE1Jo
C7O1VEcHpqTFHT4dw6EMWu6mj5TyPyf+wkEI4S8WjRow+eL5HX9s3f7XKBEtDZtE71S6ODMt
kWYBqONaOsJyP43cr/2PqzsWuZ8m4LkN+rTJTbtHSpmQoSIxMXHKlCnfffcdLQ9ZrdYXX3zR
z89PpVIJuJfORrsYuQ4aYdTm8AVe++aZks2LwrbklWxeZFiQQQcjoFcf/sF+kza3d/xUuZ+G
lJQQWpWfkGI4lEHL1LSkQpPlb168U5bQ5hzaV61b1ir0KDTwNy2PmrS5jnXHCo6LFhbpeBCO
ctYJGZDWrVs3bty4qKgoNzc3hmFu3bqlVCqPH5fiiGrNoqGIEEKry0o2L6JN0CZtLm2e4dt+
+eovvorMfpneoLEsy6fcliZ9euVyoHsZaF2zY5zTxkWArqEaFCv31RiyMrpgPFxBCFyZtnfv
Xp1OV15e3tDQ4OXlFRoaKmz6nYo29vDl/d7xU2kHU0JIcPqOpp1E7SvfW2+GgZ6JLdU3bZLB
eQJdiXa2NGRl6NMmG0pdJB6WBA5IRqOR47jevXsTQjiOu3LlChFigr7CwsJLly7yo+HNAAAg
AElEQVQFBQUNGDDAfr1OpysoKNBoNJGRkU0/ZdLmVmTUt1I0ocUavhgU8NwG+9rnpu2lHfwW
0KOoBsU2Kg/Rhkmx8gM9Fm0LUMenxD01othF0iMhCBmQvvnmmyVLGl/9Oz6W3Ycffvjee+/F
xsb+/PPPw4YN47uV79279/XXX4+NjT158mRycnJqamqjD3rVXLeW+tGhl+ka+qAfHY2GPitH
H7loqf8CQEc0nTKg58wRBVIj99OwE166WeskdkZaI2RAeu2116ZPn/7KK6/I5XKh0uQ4bs2a
NV999dW9995rMBhGjBgxc+bMAQMG2Gy2tLS0jIyMiIiIysrKxMTE5OTkRjWEptip3inj6Vw1
dA1tBLKW6mjXA4frpA8OhPaLsV+DaXNBXD/X3s1M8mIQMiDV1tYuXLhQwGhENTQ00NHYXF1d
GYapr68nhBw+fNjDwyMiIoIQ4uXlNXr06KNHjzZtsqK9D+ijqbRPNh+EpNP7FnoISfX5BpAg
IQNSYGCgVqsVdqAghmHS0tKeffbZMWPG5OTkTJ069f777yeEVFdX9+/fn9/M3d39woULjT67
adMmfgbbl1566eGHHyZh0YWFhQJmrxUsy5aVldn3tet6ZWVlNTU1CoVCrAxYLBaDwdD06bSu
dOPGDVEehmuwOLHFhYWFhQaDgRBSXV1t1V00+ver7KozkCfuqWg2m0tKStxcamtqampra8vL
2cJCS9dno8eeiv/973/XrFnDv1y4cGFX7v1uCXloPv3005EjR7788ssJCQn26zvYqeGHH35Q
qVS+vr4eHh6XL182Go0qlcpmszHMb/OvMwzDcVyjDy5cuFDEYQRZllUqlcHB7R8yvOOUSiWd
fkKsDDQa818UMpms6wdXJYRYVc5Xq26Ehobyg6teNZQHx43r+lo7cU9FpbIyICBA42bx8PBw
P33Vx8cjNLT9g6u2W489FZ9++umnn36aLtPBVaVMyEMzadIkQsgbb7zxxhtv8Cvb0alh5cqV
u3btIoS4ubmlp6efPn16//79zs7OM2bMmDt37gcffLBw4UKFQmGz2fiPcBzn4uIi0PcAEACa
i6jCKnOopyupF6FUBA5HyICUnZ0tSDozZsxITEwkhMhkMp1O169fP35C9JCQEJ1ORwjx8/M7
e/Ys/5GqqqqxY8cKsncAodAeNMSlF32JTg0ArWPuvEmXCw8Pj42NjY2NjY6OHjhw4LFjx+jz
TAaD4YcffoiOjiaEREVFkdsh8OLFizk5OSNG4AkPkBY6WIPYuQBwGFIf9nTAgAF/+9vfUlJS
Bg0apNVqJ02aRCsGGYZZs2bN4sWLIyIitFrt6tWrfXx8xM4sQIuspTo8hATQOqkHJELI1KlT
p06d2nR9TEzMsWPHuj4/AG0k99WwpXoSNJAQQgdxFztHAJImxSo7gG4DVXYAbYeABNBZ7Lsw
0FntRcwMgPQhIAEAgCQgIAF0ll+7fRNC0OcboA0QkAA6EdqQANoOAQmgs9h3q0O3b4A7QkAC
AABJQEAC6Cy/PocEAG2DgATQFfBgLMAdISABdAU8hwRwRwhIAJ1F7qdBLzuAtkNAAgAASUBA
Auhc9NlYPBgLcEcISACdCO1GAG2HgAQAAJLgAPMhATguftJYFJUA7gglJAAAkAQEJIBOh6di
qVBP5bVKs9i5AOlCQAIAAElAGxJAJ5L7aupL9YQQF7QhAdwJSkgAACAJCEgAACAJCEgAnQjD
2QG0HQISQKfDuEEAbYGABAAAkoBedgCdq6HyBiGEeHiInREAqUMJCaAT8SMG9dihgworzaFe
SrFzAY4BAQkAACQBAQmgczVU3RA7CwCOAQEJoBPRIewaqm5gLDuAO0JAAgAASUBAAgAASUBA
Auh8lSVi5wDAASAgAXQiua+GRqMe2+0boO0QkAAAQBIQkAAAQBIQkAAAQBIQkAA6XUPVjZ45
2vfcbefFzgI4EgQkgE4k99P05JEaCitNrb5r/uhEzz040BQCEgB0lsIqc4tvVZoTtp7Kvlwd
tiqnsLLFzaBHQUACAGHQEo99oaeVSJOeeTW+r+eH0wYcWjA0YespxCQgCEgAXaAnPIRESzzX
Ks0f/z4mtSTrclVaUhghJNRLmZYUlrD1VOfnEaROigHpyJEjjdbodLoDBw4UFBTccSWA1PSQ
aBS2KufDaQPSHglLeyQsPfNqs5uFeCn5Sjz7eZLmRAXOGRaIHhAguYC0ZcuWv/3tb/Zr9u7d
O23atP379y9YsGDjxo2trASArkfLRoeeHRLf15MQQv/PulzVbC0cXZ91uarRrH1PRgUWVprS
9zcfyaCHkNAU5tXV1atXr96/f7+bmxu/0mazpaWlZWRkREREVFZWJiYmJicnazSapitDQ0PF
yztAa7r33BNzt537cNoAGoeoUM8Wp4il0Yjcjlu/fcRL+eG0gQlbT8VFeDR6C3oOCQWkDRs2
eHl5/c///M+qVav4lYcPH/bw8IiIiCCEeHl5jR49+ujRo0FBQU1XNg1IRUVF+fn5dNnf39/f
37+LvgkhhBCWZS0Wi9ksZlOt2WwWPQOiHwSaAZlMvFPdK4AQIuJB6NRTccFXV0eG9Boe5Gqf
/siQXgd+KX9iiC99ab6NZVmaH/p/oywFqMjW8WFzt50/v2So4PnssafizZs3b968SZeLioqC
goK6cu93S0IBacWKFQzDZGdn26+srq7u378//9Ld3f3ChQtubm5NVzZNMD8/v6ioiC7PmjVL
oVB0Tsabx7JsTU2NfWmv6xkMBkKIUtni7Wpns1gsNTU1XXzkG6EZEDMgEWI2m6urq8Xae+ed
imuOlV0qNb0Wf0+jb+fjwuYVmWtrXenL6upqeirW1poIIb8UVxNC/F1J02PygLfT1D94zvr0
57cfF7jhrceeigUFBZ988gldLioqmjBhQlfu/W5JKCAxTDMNWjabzX49wzAcxzW7sulnJ0yY
8Pzzz3dGVtuC3gYGBASIlQHKw8NDxIBkNpsVCoW4B4Fl2YCAABEDkk4mcw0ME/EgdNKpmHW5
aucvt66+Etv0rQfqFHsuXq11/jUE0l17eHg8YDMRcqOXu3thlTmur0ezWXo9OWDutvPv/mRK
eyRMwNz22FMxICAgKSmJLr/99ttduet2ELNTw8qVK4cOHTp06NBRo0a1tI1CobDZbPxLjuNk
MlmzKzs3rwDt1S172WVdrpq77fyH0wY0+26op2srj8TeUVpSWNblKnRw6IHEvI7PmDEjMTGR
ENJKOPHz8zt79iz/sqqqauzYsc2u7NSsAgCvsNKcsOU0362uXSmYnoxqsbBCOzjM3XYu7jI6
OPQsYpaQwsPDY2NjY2Njo6OjW9omKiqKEEIbli5evJiTkzNixIhmV3ZVrgF6tMJK89xt51qP
RqFeylZGXiisMhdWmUM9XVvZy+2YdB4jOPQoUq/pYhhmzZo1ixcvjoiI0Gq1q1ev9vHxIYQ0
uxJAgrrZON9zt51LeySsLQWXDsaSUC8lHVXo0IKhjR5agu5KcgEpLi6u0UgNMTExx44da7RZ
sysBJMip7xAnz0CxcyGMhC2nnowKbEs0CvVSXmulkNS2WMWPKoSY1ENILiABdDNMX+GfqhEF
jUZzotoUXEM9lU37NdBqOjonRRsDDN0dYlIPgYAEAHdA243aHo2EhZjUcyAgAUBrxI1GFGJS
DyG5wVUBQDroMN5pj4TdbTQK9XJtfbrYuzUnKpD2caBD4UG3hIAEAM3LulxlP4z33SqsMod6
KRsVaEK9lHR9OxKk/e7S91/FM7PdFQISADQjff9VOhaDgI+mhnopWxrc4W5SGPjRDzcQk7ol
BCQA+J3CSnPCllNZl6uuvhIrwYESaDmJEBK2KgePzXYzCEgA8Bs62158X89Dz3aot3qoZ/OD
NYR6unY8ioR6KdMeCZszLDBh66m2TJcOjgK97ADgV+n7r370ww1hq+ma1coMfm2X9kjYk1GB
c7edu1ZpFnZocBALSkgAIPVqupbQJiWC6rvuAiUkgJ6OFozmDAt0xHIGrb4L8VLO3XYuvq+n
I34F4KGEBNBz2ReMhL2Uh3gpiUBVc20xJyqQLyrhQSXHhRISQE9UWGn++MSNrmkxairUq7W5
J9qbpjLtkbC4CI+5287H9/VMSwrDmA4OByUkgB4nff/VsFU5hBDHajFqi/i+nocWDA31VCZs
PYVnlRwOAhJAD5J1uYpWagleRycdtKjEP6uEsORAUGUH0CNkXa6au+08IaRr6uhEry6jYYn2
C/9o1Y1lowPH3yt8PSEICwEJoJvLulw1d9sVmUyWlnTXY6Q6ulAv5aFnh2Zdrkrff3X14Rtp
SQ097Qg4FgQkgG6L9ucmhKRGe7702GCxsyOa+L6ew//s+s6Rqx+fuJGeedVBO7j3BAhIAN0N
34OOEJKWFPbEEN+SkhJRchLq5dp03lixTBvsuejhAXR6p49WOepzV90bAhJA90FD0auZV+ns
QbQhh2VZsfMlIbQSr7DSnJ55NWxVTnxfzyejArpZV0PHhYAE0B18dOLGxyduFFaZ5wwLbFib
KHZ27qDLHphtMQNeyg+nDaDxm/b16IENbBKEgATgwPgiUaiXEpfUu8X3xMu6XEWbl1BgEhcC
EoDjsW8lmjMs8OorsaJ3s24jCeYz1Es5xytwTlSgfYFpzrDAJ6MCJZjb7g0BCcBh0CtmYZX5
oxM3Xk0KQ5FIWHyBqbDK9PGJkoStp0I9lU9GBeIgdxkEJACps49DoV5KB2klctSnUEO9lKFe
yvi+noWV5qzLVdmXq2lVXlxfD0SmzoaABCBRNA5lXa7KulztKHGoEdE7L3SEfVUeH5lomSm+
rydq8zoDAhKAtPBxqLDKHN/Xs+OziUMHNY1Mc7edp7cIcREe6AEhIAQkAPHRIEQIof3l6DOb
3eNK9+G0AWJnQTB8ZEpLCiusMmVfqk7ff3Vu1XlaoYdiU8chIAGIo7DSTC9qtLNcqKcyvq+n
A/WXa4sQL2X3CKuN8O1MaSSsUbEJrU0dgYAE0HX4IGTfMiTKFHkgFPtiEyHk4xM3aN9xBKd2
QEAC6Fx6A3v02q2bxir7IJT2SNihHhyEQrpRKZBHi7Zpj4TRYhO987APTvd7kz/UKcZE+oqd
U+lCQAIQWKNiULBaFuqpHBPp28ODUI/SqE6PEJJ1uerbn/Qvfn+Drg/1VKJDRFP/v71zj2ri
ePv4/IJcFF9eTBGFHg5REJAClnB5PTSIpejrsaDSalVUqvWSoiCVekCt9Vau9Y4S66WllVKr
pdpKW6soBqG8CMdKVRQQkEChUDShHi6RZJP3j9FtzGUhYHYDPJ+/spPZZ555djLfndnJLAgS
AAwU3OPgVQmqw6DpTmMyF7lbs6QIIWtra4a9BBgCj5yWs+1C7IhTy73/fCzHz5yEFx+8XnuT
nNnjDNHnbXoBggQAekOOgeolUmGtpF4sxQqEENIcBrW3G8v7F+hnKC3QeFGQz5zQs1sZrE9f
lXWr6RNnzMjhFkAQJADoBa0DILwojjPGApYkAP2GHDxp1SeypXHYI4fJEAoECQCegxz9IBX5
QQhh+YHnQH1kuN3avxDU9Ak9a431YqnqEEpVoobYKAoECRi+kL92kVhaL5HWi7tVRz9I2/wb
MHCGUgdqaPDiCOSEdEmU6g0TQmiwqxQIEjD0qRdLR4wYIayViJ5NidRLpPjBD3o29Alysn7X
bzzID2DkaJUohJCwVoIQUlMpciyFBsl9wFAWpBMVsn1JxfiScMZYOOIL+exWAhhi4J8lOeJB
GsJDjnvwe26gGQBDA3KiDyGdKlUv7kYICetfSedUMOZoHxjKgjTDnoiO4pLD23qJ9KuybrUe
isMeiRBSvYMYvKPdIY+m5OB5NnxNEb55fHb/gRDa/r8TEELO5p3jx48fMWIoN3UAUEOrSh06
dIhJn/rAUP6VOo6x0BzeYlS7NoRQQW07QoiUK/SvOD1VLDzAQiBaBkPtiqjqDUJIWNuOnr8o
WHLwPBuiHPX++WcnHRUAAGDADGVBooBDqosTQki7XKHn+0dStNDTjvI53UIIkdKFEHJkW8jl
8idtoleeWKJnLyujX8Nu3brl6urq6OhIc7lkACv/kohEIvOxSvRMY5CKzNRLpGRmtUiq6U3m
AO4A8vLyli1bNrAKDYjW1tbW1tZp06Yx6ENeXt6KFSsYdECtKTJyP8d4S2DcAePHGAWpsLAw
MDBQNaWmpqa+vp7NZnO5/74YprGxsaqqysHBwdXV9cU6QP5aSMXSiqpukYdP12tJpAih07/e
+Z8/RyFtPe9T+2PIgkZqJmru96XrZ6zr7ZxffP/LW+Hmyv8ap7MKkm6KemFEzx/iuiCEsKio
JpIn/hvAMRbXS8sXzvpvpFIvUmYQLWPNrKysmTNnvvzyywYthYJLly4hhBgUpNbW1qysLGYF
KSsrKyYmhv57I5Jbt25dunSJWT1gvCkaP0YnSAKB4NSpU4WFhWRKYmJifn6+j49PdXW1paVl
Zmamubl5bm5uampqQEDAjRs35s6dGxsbS7+rz+kWQmrS1dTUJDp2Jv/L99XOUu3uST1QTSQF
AI/JVMHjM01IkVCjifXa9Rum6MbvOqug7YWequqomQc/b0MIkaKCdA8BS0tLD/3fb5mL1IMA
AACgiREJUnt7e1pa2sWLFy0tLcnEe/funT59urCwEG8FFhYWlpubGx4evn379jNnzjg7O4vF
4uDg4Llz53I4HMZc14fnRkjkZ93jsIGwbNmymBkx/v7+BrEOAADwQjEiQTpw4ACbzU5OTk5K
SiITra2tjx49Sm5MOWHChObm5mvXrllbWzs7OyOE2Gz2tGnTioqKNAWptLSUwVUlTU1NiOll
LU1NTWfPnr1+/TqDDjQ1NTG+tufQoUMMzpOUlpYiRlsCU02Rw/Y5d/bcbYtOpN4U/02nDWiK
CKHS0lIjvz39j1KpZNqHpygUChaLVVBQsHXrVtUpOxKRSBQaGnrmzJnKysq8vDyBQIDTt2zZ
MmLEiF27dqnlZ7zxAQAAGBUxMTFMu0CFEY2QWCwWxbetra3Lly9fu3bt5MmTKyoqVDOzWCyF
QqF5ipGHHgAAAFCFSgMMTWJiIpfL5XK5amvqNLl9+3Z4eHhkZGRUVBRCyNzcnCAI8luFQgF/
ewQAABjsMNmPR0REBAcHI4So5aS4uDg2NjYpKWnmzJk4xdbW9s6dO2QGiUQye/Zsg7oKAAAA
GBomBWnixIkTJ06kztPY2BgdHb13714ejyeTyRBCLBbLz88PIVRQUBAUFHT//v3i4uJPPvmE
Do8BAAAAg2HsM13ffPNNZ2fn++//+0eWJUuWbNu2bc+ePXFxcc7OzhUVFWlpaTY2Ngw6CQAA
AAwcI1plBwAAAAxnmFzUAAAAAAAkIEgAAACAUWDsz5D0QuserCRisbiuro48dHFxsbKyYtAf
g6K5QS2G/iBQ+2MgqDfepTMIhtsCuB8lMnX1MTS3AV0lMhUE+nsDihKZbQkUDB1B0roHq2qG
c+fO7du3j0xMT0/n8XgM+mM4NDeoJaE5CL36Ywh63XiXtiDQvwUwdYmMXH0MzW2AokRGgkB/
b0BdIoMtoReUQ4K7d+96eHhIJBJ8GBoa+t1336nl2bBhQ3Z2tvH4YwgkEsmmTZu8vb15PJ7W
DHQGoS/+vHDkcrm3t/f9+/eVSuWjR4+mTJny4MEDtTz0BKEvntBcIs1XH0N/G6Aukf4g0N8b
9FoiIy2hLwyRZ0ha92BVy3P37l0nJyexWIz/z8S4P4aA3KBWVwY6g9AXf144WjfeVctDTxD6
4gnNJdJ89TH0twHqEukPAv29Qa8lMtIS+sIQmbKzs7Ozs3v61leRSHT16lW8yRAJQRANDQ2f
fPKJWCxub29/6623EhMTGfTHQGzbtg1vUKv1W5qD0Ks/hqC9vd3NzY08HD16dHV1tWoG2oLQ
qyc0l0j/1cfQ3wYoSmQkCPT3BtQlMtUS+sIQGSGRqO7BqpYeEhJy7Nix4uLiq1evFhYWnjp1
ikF/DESvG9TSHARqfwwBQRDUG+/SFoRePaG5RKZ+AvS3AYoSmQoCWTqdvYGuEpkNAjWDWJA0
92ZV24NVFXt7+/T0dHt7e4TQuHHjZsyYcePGDQb9MVyhFDASBBpQLbTXjXdpCAKG/i2AqUuk
reLGDINBoKE36GOJxtwSBvGUndrerJp7sKoiEonKysrmz5+PD3t6ekxMTBj0x0CFUkN/EOhB
tVClUkm98S4NQcDQvwUwdYm0VdyYYSoI9PQGfSzRqFsC06sqXgwNDQ3e3t75+fk9z5DL5Uql
sry8vLm5WalUVlZWuru74wVILS0tAQEBhYWF9PtDD0KhUHV9EVNB0OWPQSEIgsfjCYVCpVJZ
XV3t5eXV1tamZCIIujwxHNR1Z+rqY+hsA1pLZDAI9PcG1P0hsy2BmiEiSKmpqS7Ps3PnTqVS
uXz5cnK9Y3Z2tre3d2RkpLe39xdffMGIP/Sg9lNkKgi6/DE0JSUlAQEBkZGRPj4+Fy5cwImM
BEGrJwaFuu6MXH0M44LEYBDo7w167Q8ZbAnUDK/NVRUKhVQqtbCwoP9Bq/EwTILQ1dVFUUc6
g0DtCc0lDpOrTw0EARlrEIaXIAEAAABGixFpIwAAADCcAUECAAAAjAIQJAAAAMAoAEECAAAA
jAIQJAAAAMAoAEECAAAAjAIQJAAAAMAoAEECAAAYmpSWli5atCg4OPjgwYNM+9InQJAAWomO
jq6oqBiM9nVZbm1tXbp0qa+v7/79+w1RLv3ExsZGR0dv3LgRIXTkyJGTJ0+qZdCaSHL8+PHo
6Ojo6OiamhrDOgpQIhaLt2zZcvDgwcuXL5eVldH5/vh+A4IE0EpeXt7Dhw8Ho31dljMyMsRi
8aeffhoaGmqIcuknPz/fwcEB7xJdXl6uKcNaE0l8fHzeeOONvLy89vZ2wzoKUPLbb7/NmjVr
7NixSqUyMzPztddeY9qj3hnEr58AAGNALBZ7enri918MGXx8fEJCQvp3LpfLdXNz27Rp04t1
CdCXsrIyhUKxePFimUz20ksvHT582NzcnGmnegFGSADd1NTULF26lMvlLlu27Pbt2zixubk5
ISFh6tSpXC43PDz8xx9/xOn5+fkLFizgcrkzZ84UCASkkSdPnuzevTsoKMjX13ft2rUikah/
9hFCfD4/Pz9/xYoVXC43LCzs8uXLOF0sFm/evNnX13fWrFlkohpxcXE3b94sKSnh8/lPnjzh
8/nFxcXBwcFhYWFdXV26nBSLxQkJCdjyr7/+un79euwnn88nHVY71GVKl/NdXV0pKSmBgYG+
vr5xcXGtra0IoZMnT6akpJD2Ozo6+Hx+fX19ny+dOtevX+c/z/r16/ttDdALtSm4xsbGy5cv
V1VVkSkKhaKqqurUqVNnz55ls9mnT5+m3Ue9AUEC6CYjI2PRokUXLlxwcnJ69913W1tbFQpF
ZGRkd3d3Zmbm2bNnfX194+PjGxsbRSJRVFTUwoULr127tnnz5hMnTuTk5GAjH374YUFBwd69
e8+fP29ra7t48WKxWKyvfZxfKBRu3749NDQ0PT3dw8Nj/fr1bW1tCCE+n9/Y2JiVlZWYmLhv
3z6tdZk/f76DgwOHw4mIiBgxYoRQKExOTl6+fPmcOXNGjRqly8lVq1b9/fffubm5hw8fzsjI
uHLlCk4XCoVkLdQOdZnS5XxMTExJSUl6enpOTk53d/eKFSsQQq6url9++SUWJ4RQbm7u/fv3
ORwO9fVqbm6+/Dy4CIQQrjhm1qxZJSUltra2ejUGoH8IBIItW7aQh7m5uYsWLbp48WJUVBS5
fsHW1vaVV17Bm3nzeLzq6mpmfNULhl9/AQwzXFxcTpw4QR7OmDHj4MGD//zzT2pq6qNHj3Ai
QRAuLi5CoVAoFE6ePLmpqQmn//7775WVlUql8u7duy4uLvgNY5g333xTIBDoa1/TJalUir8q
KytzcXHB7/QjSyRPUWXdunXx8fGkqc8++0z1FE0nseWWlhZNy2pFkId9rC/pfHV1tWr+tra2
+Ph4XP3p06cfO3YMpy9cuPDQoUOaNfLw8MjLy8Of16xZ4+7u7v087u7uZJXJot955501a9bg
w87OThcXl7KyMk3jwACRSCSbNm3y9vYm3/Ykl8u9vb3x5X706NGUKVMePHigVCpv3Lgxf/58
nOfjjz/+9ttvGXJZD+AZEkA3kydPJj97eHjU1NRYWVklJCQUFRXV1dXdu3evrq4Of8vj8dzc
3EJCQry8vAICAmbMmOHq6ooQwvd6x48fJ+10dnZWVlbqa5/E0dERf8CT7DKZTCQSWVlZ2dnZ
kTb7+FL2SZMm4Q+6nLS1tbWysho3bhxp2czMjNomdX01na+trTUzM3N2dsbpNjY2aWlp+PO8
efPOnz+/evVqkUh08+bN3bt391qj0NBQ8nQMn89Xy7NhwwapVDpk1hkyiEKhqKurI68dQqi5
udnKymr06NH48MCBA2w2Ozk5OSkpCadcu3bN2toan8Jms6dNm1ZUVMThcLhcLo/HCw8Pt7a2
Hjly5IIFC+ivjr6AIAF0o9qzm5iYyOXy7u7uiIgIsVjs7+/v7u7+9ttvL1myBH+bk5NTUFCQ
l5f3ww8/ZGRkxMfHr1y5Ui6Xm5mZ+fn5kXb8/Pzs7e31td9vtykwMTHBH3Q5+ddff+k6RRWC
IMjP1PXVRCaT6Xrr2oIFCwQCwb17965cueLv7+/g4NCHOvVCSkpKeXn5uXPnRo0aNXBrwxwW
i/Xzzz9Pnz59ypQpCKHm5uasrKyEhAQyw7Zt21gsVkFBAZnS3t7u5uZGHo4ePZqcncMr+OVy
ufEvZ8CAIAF0o7p4ura21s/PDz+MLS4utra2RgiRDznq6uoqKytnz579+uuvI4RSUlKOHz++
cuVKNpvd09MTFBQ0duxYnLOgoGDkyJH62qfAxsams7Ozo6MD35mKxWKpVCXA5wwAAAPmSURB
VKpXNXU5aWdn19nZ+fjxYysrK4RQe3t7d3c3eRapQ6pOUtdXk3Hjxkml0ocPH9rY2GCbq1at
iouL8/T0tLe39/f3v3Tp0oULF1avXq1XjbRy8uTJ06dPZ2dnk2M+YIDExsbi50Bjx45VUyOE
kOatBkEQqoksFkuhUJCHJiYmWu94jBNY1ADQjUAgwJrx9ddfV1VVLVy4EP9gcGJHR8fOnTsR
QgRBPHz4cOPGjdevX0cIKRSKhoYGPCEWFBTk4OCwdevWrq4uhFB+fv6aNWskEom+9imcDAwM
tLe337FjB0EQMpksMTFR32rqcnLq1KkcDmfHjh0ymYwgiF27dpGnODg4/PTTTwqFoqOjIzU1
tVdTuor29/d3cnJKTk6WyWQIof379+OnSvjbefPm5ebmNjU1DfyPU1evXk1KStqzZ8+ECRO6
nkEdWKAvxMbG/vLLLwKBQE2NtGJubq4ac4VC0cfRvBEyWP0GBi9eXl4hISFKpdLS0vLw4cMT
J050cHAICgqaM2eOlZWViYkJn89vaGiora1dvXr12rVr33vvPVNTU4IgJk2alJGRgRBisViZ
mZlxcXF+fn6mpqYIofj4ePKfQH23T/HnIRaLdeLEiZiYmFdffRUhFBER0euTHk0Lupz8/PPP
161bx+VyEUKqM/s7duyIj4/39PRksVgffPBBUVFRr6Z0cfTo0djYWC6Xy2Kx1P6DMmfOnF27
doWFhQ18Guf7779HCK1bt041MTs7293dfYCWhzn19fUKhcLR0fGPP/7Ac3cU2Nra3rlzhzyU
SCSzZ882sIMGg+lVFcBwRC6Xt7W1EQShmtjT00MuhFOFIIiWlhapVKr5VU9PT0tLi5odfe1T
I5FIenp69D2rL06SllUX1xEE0dbWJpfL9TKlC6lU2tbWppaIF2VRLIFTXWXXP2CV3UB48OBB
YmIi/iwQCMrLyzXzCIVCcpUdQRA8Hg83oerqai8vL82LPliAERLAACYmJvjxhiqmpqZsNlsz
M4vF0vV8wtTUVOtXetmnBj92Ggi6nNRqmcViaXreqyldmJubqw6DHj9+LJfLjxw5Mn78eF9f
X4oTpVJpV1dX/xYpPHnypLOzsx8nAgghhUKRk5Pz0Ucf4cOoqCiBQDBhwgT8xFErLBZrz549
cXFxzs7OFRUVaWlpFE3IyPmPUqlk2gcAGNZ4enoKBILAwEBDF/T48WM/Pz9LS8tjx45RCBKX
y5XJZJaWliUlJf0oJTY2Nj8/HyH01Vdf4WlJgB66urosLCx0LbAcFIAgAcAworu728zMbBAt
uwKGFSBIAAAAgFEwiAd3AAAAwFDi/wFvH3nTxJ6inAAAAABJRU5ErkJggg==
--------------94D3A2B2E2F14DF601594837
Content-Type: image/png;
 name="mcpiolcmkfcibblj.png"
Content-Transfer-Encoding: base64
Content-ID: <part6.51D4699E.111F5B1D@comcast.net>
Content-Disposition: inline;
 filename="mcpiolcmkfcibblj.png"

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
+9GKlN7IZb3PAsXLR8tDy0thU+FWk3bcbic+yaQDGl8rld5PG2t3QOImHfzoVLT6GmpnHW8B
W6R4+ZRBIUTloJa3RXF3CvONXTupssunKr8VXdT3q9d/y/zgh8W3O6qHbh0o0nIrWof0fE2/
u2f+I3d0RfG65w8mbvs+mG+356ntdDwMjXt8jHTwdd9r+H6pfUnq8/Q9dfDStQuctB5VG3x9
re+RnH28e118GbnlNC3tH3RWSY0+2hdiNo24uK0KTdkxL8q48om3MGlSC5M2Qmp9jbcqxVue
2rQxLrv+uNbDabvflEFnUfQdyriDW9nlU6WTL/zDRHVTz9VBmspKrcRFX3vXt4e3E731y80d
oaHumlT3yhC/wCk9LnWbaT3KD77Np22LuunpgEb7hrxro1AcwRdelE++sstHYVMb8kUON+Ra
ncvo59vm+uMOENQtZdKzU9v+x1Fz7S1HC11Ah+m0ue7F6SymG41F3ffK6iPdFG0PvjqrpANs
nSFte8CfN4IvvCiffGWXj05TakOurj6LotYF18931paFttYfBV13sZdOKaN+2lr34nS6u+sX
OLU1+Go7rOuV1Mqr7oXcha18BF94UT75yi6fsm8gMS13i1x1WZlFW+uPG3JOreJda2FrirbW
PUlf4NTlMwdtDL7qEqjhCNUAoWtbUA2CL7won3xll48beUQbvkVyF2CpX9ks2lh/tCNS2agl
ZtEHKMjWxronqnPaTugCYS5wal/w1fZFgVfBt+0jciwawRdelE++ssvHnT5fdAuOTpvqe6hv
2SzaVn901bwbjUT9KVFfbat7OrOgOscFTkltCb7qyqARdbR8df1A0YtlMT2CL7won3xllo9a
ebURV5+9RYv3850lhLet/riLD9XiRheHemtT3Ytf4FTGMINt0obgq2WqZatlXJehOruA4Asv
yidfmeWju3FpI64L3OrADdU1y9BIbao/8TF7Z+37jOq1oe7pAFTjQ6veqTWQC5xGNTn4qtVe
rfdavl0ckWPRCL7wonzylVk+ru+obuBSB+4OY7OMMNGm+qM+dyqPuhyYIF/T6576d3KB03hN
Db7qn61+2jp7xLUCi0HwhRflk6/M8nGn0e+674VozmKppUnfZ5YL3NpSf7RjVVnodCStbs3Q
5LoXv8Bp0Re61l3Tgq+6jn38jqft99bIHF0ekWPRCL7wonzylVk+biizutx1Safz9X1maeFs
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
MOb/A/hkQpU77XkqAAAAAElFTkSuQmCC
--------------94D3A2B2E2F14DF601594837
Content-Type: image/png;
 name="pjmkopklffiinfoa.png"
Content-Transfer-Encoding: base64
Content-ID: <part7.DAB3E0EE.CA68A69E@comcast.net>
Content-Disposition: inline;
 filename="pjmkopklffiinfoa.png"

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
--------------94D3A2B2E2F14DF601594837--

--------------63BD18A1CEF109678634B369--


--===============2490265031433551966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2490265031433551966==--

