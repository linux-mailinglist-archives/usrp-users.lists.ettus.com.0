Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D0C2458C9
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 19:23:41 +0200 (CEST)
Received: from [::1] (port=45788 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7MNf-00044s-4j; Sun, 16 Aug 2020 13:23:39 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:35203)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k7MNb-0003xY-FS
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 13:23:35 -0400
Received: by mail-qk1-f180.google.com with SMTP id p25so13062622qkp.2
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 10:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=mIpm+JOekKt8CCw4xNvM9AyjCo1gprp2Y2X2X+pxhFI=;
 b=D9XoMETq7iXZpMunkQSdVYGYl2wJ3uanvJK4ZFugIdd862JjM8hmecrQq3NLMITFEe
 LmsE2ERaVGSse6n24SP3/+XxqvE9gU6IXMtnd1MGbvYlbkUifGZ7YV+cNUs9STTELGez
 uZb149pwZx9Plu2vW2cdAQ5KSxliYwoiI5ja7kdgFNGCywXZQewx3g+Dx8qOfzQX665J
 RBlQwj9/K/xHNkVZ3/VoMvunCBl2E0tCdjTvnpHUF4n+3COEzqNxZ0FFukmhllZeVwwc
 LQ3q+aOaYCIyXljR7832HlriVwYmpkLpfpsPxKH4YeJfaq16+0K1awALN3HQ90g3E1w/
 Ezfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=mIpm+JOekKt8CCw4xNvM9AyjCo1gprp2Y2X2X+pxhFI=;
 b=JEQy+GGrLLvhSgaJtjWB1G55pBu6+YKygXqynbsHNRl9Jt4jdOXqXlZmVTG2Dyxx0D
 196nciOP4A+H64/pmUu95J7LPlahffzdzKEgoTo+4g0ZOwLt1iHRckCBpnmdLZstBydM
 MTCqNdJHBKoZFX1XNoUfOjOWoN3cXmLfWUiUogbHrPnGEYH5pF+petbCSqVHn2k95uo2
 tTjwc85Y+UTZhFKF4vNWWpaqLSZj1H2Nu4b+jmmqgk2p8G8haPFCnspCz6wX01P/PJDR
 9wq0fhcEHF/Wl0arJjw+A83oIn8+AZIpCjJPkMKlGUTPGx1wMRbWt5pS4X6CoWqvrysL
 aN6w==
X-Gm-Message-State: AOAM530gx5h3EhEKrtweLCF8rDakO65bfeniUENe20YbzU0lsZicMdu+
 PgQ1Av/xSeOxbiKZnnak2sFx9AD6Y9oltQ==
X-Google-Smtp-Source: ABdhPJwqqwHRVlE0B0oyYOtqsUOduZIxsFuL1IvtGRZwYNMOpbnn0Tvzcv21Y2nTj52d0FjBNuapKg==
X-Received: by 2002:a37:b145:: with SMTP id a66mr9724700qkf.338.1597598574383; 
 Sun, 16 Aug 2020 10:22:54 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id z10sm16902094qtf.24.2020.08.16.10.22.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Aug 2020 10:22:54 -0700 (PDT)
Message-ID: <5F396B6D.9080001@gmail.com>
Date: Sun, 16 Aug 2020 13:22:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39604D.6030303@gmail.com>,
 <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB2588B859845EA8B4E4FB4477905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39684D.1060702@gmail.com>
 <MA1PR01MB25882A435C92F1F1BBE5DF2E905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB25882A435C92F1F1BBE5DF2E905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] Incorrect data from usrp 2955
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============5306643501065705646=="
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
--===============5306643501065705646==
Content-Type: multipart/alternative;
 boundary="------------030809080605010408010903"

This is a multi-part message in MIME format.
--------------030809080605010408010903
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 08/16/2020 01:15 PM, Koyel Das (Vehere) wrote:
> I am not observing one individual channel but phase difference between 
> two channels. I very well know individual channel would show random 
> phases but not the phase difference when same signal is injected in 
> two channels. I hope you are aware that phase difference = 2pi/lambda* 
> path_difference. Path difference is constant as that’s the difference 
> between two paths of two daughterboards and hence this phase 
> difference is constant. Remember same signal is injected so initial 
> phases would be same for two channels and only the difference in the 
> signal path lengths bring the difference which is constant
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
Yes, I fully understand that.  I'm simply suggesting some simple 
diagnostics to determine whether, as individual channels, the receivers are
   working correctly.


> ------------------------------------------------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Sunday, August 16, 2020 10:39 PM
> *To:* Koyel Das (Vehere); usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
> On 08/16/2020 12:46 PM, Koyel Das (Vehere) wrote:
>> The measurement is not initial phase but the phase difference between 
>> two channels
>>
>> Get Outlook for iOS <https://aka.ms/o0ukef>
> Are you using an external reference, or using the internal clock in 
> the X310?
>
> If you observe an individual channel, is it "sane" ?  That is, 
> apparently on-frequency, and with correct amplitudes and low distortion?
>
>
>> ------------------------------------------------------------------------
>> *From:* Koyel Das (Vehere) <koyel.das@vehere.com>
>> *Sent:* Sunday, August 16, 2020 10:15:48 PM
>> *To:* Marcus D. Leech <patchvonbraun@gmail.com>; 
>> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
>> the phase difference between two channels of USRP as a function of 
>> frequency and time,  when measured by splitting the same signal and 
>> feeding two channels of usrp, are wandering around wrt one another 
>> which was not happening before. I had given demo more than 30 times 
>> based on this principle and tested previously more than 50 times and 
>> I got correct result every time. Now only suddenly it started 
>> happening. The frequency is 2.4 GHz and bandwidth I tried from 1 MHz 
>> to 100 MHz. Previously the whole bandwidth was showing similar values 
>> but then suddenly started behaving abnormally giving near to correct 
>> result sometimes and sometimes junk.
>>
>> Regards,
>> Koyel
>> Get Outlook for iOS <https://aka.ms/o0ukef>
>> ------------------------------------------------------------------------
>> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>> *Sent:* Sunday, August 16, 2020 10:05 PM
>> *To:* Koyel Das (Vehere); usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
>> On 08/15/2020 11:59 PM, Koyel Das (Vehere) wrote:
>>> No it doesn’t look better again after reducing gain. Sometimes the 
>>> phase differences are closeby but not so same as we were getting 
>>> before and most of the times they are totally incorrect. Strength of 
>>> the signal when we tried with maximum gain was near -40 dbm.
>>>
>>> Regards,
>>> Koyel
>> To clarify some things.
>>
>> (A) The phase errors are just the initial phases--they don't wander 
>> around with respect to one another during a run?
>> (B) What frequency range?
>>
>>
>>>
>>> Get Outlook for iOS <https://aka.ms/o0ukef>
>>> ------------------------------------------------------------------------
>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> 
>>> <mailto:usrp-users-bounces@lists.ettus.com> on behalf of Marcus D. 
>>> Leech via USRP-users <usrp-users@lists.ettus.com> 
>>> <mailto:usrp-users@lists.ettus.com>
>>> *Sent:* Sunday, August 16, 2020 12:25:37 AM
>>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> 
>>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com>
>>> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
>>> On 08/15/2020 01:16 PM, Koyel Das (Vehere) via USRP-users wrote:
>>>> Hi,
>>>>
>>>> We are using USRP 2955. Something has gone wrong. Before we were 
>>>> getting constant phase difference across channels for limited 
>>>> bandwidth and with time when we split single antenna signal using 
>>>> splitter and fed two channels of USRP but now it is not doing so. 
>>>> This happened on Friday that after getting a series of correct 
>>>> results : constant phase difference across channels by feeding 
>>>> signal using splitter as mentioned above, we suddenly started to 
>>>> receive wrong data: random phase  across channels and with time 
>>>> using the same setup with splitter. The thing we did was setting 
>>>> gain to near maximum and receiving 100 MHz sample rate. But I don't 
>>>> think amplifier has damaged because in this usrp we have four 
>>>> independent channels and when we connected the splitter to unused 
>>>> channels then also we got wrong data. What can go wrong that USRP 
>>>> is streaming data but phases are wrong? What do you think? Please 
>>>> let me know.
>>>>
>>>> Regards,
>>>> Koyel
>>>>
>>>> Get Outlook for iOS <https://aka.ms/o0ukef>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> Does it look better again when you reduce the gain?
>>>
>>> What is the magnitude of the signals going to the RX ports?
>>>
>>>
>>
>


--------------030809080605010408010903
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/16/2020 01:15 PM, Koyel Das
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB25882A435C92F1F1BBE5DF2E905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>I am not observing one individual channel but phase
            difference between two channels. I very well know individual
            channel would show random phases but not the phase
            difference when same signal is injected in two channels. I
            hope you are aware that phase difference = 2pi/lambda*
            path_difference. Path difference is constant as that’s the
            difference between two paths of two daughterboards and hence
            this phase difference is constant. Remember same signal is
            injected so initial phases would be same for two channels
            and only the difference in the signal path lengths bring the
            difference which is constant </div>
          <div><br>
          </div>
          <div class="ms-outlook-ios-signature"
            id="ms-outlook-mobile-signature">Get <a
              moz-do-not-send="true" href="https://aka.ms/o0ukef">
              Outlook for iOS</a></div>
        </div>
      </div>
    </blockquote>
    Yes, I fully understand that.  I'm simply suggesting some simple
    diagnostics to determine whether, as individual channels, the
    receivers are<br>
      working correctly.<br>
    <br>
    <br>
    <blockquote
cite="mid:MA1PR01MB25882A435C92F1F1BBE5DF2E905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <div dir="ltr">
        <div>
        </div>
        <div id="id-add88a81-197d-43fc-a088-cb38d9d34fbf"
          class="ms-outlook-mobile-reference-message">
          <hr style="display: inline-block; width: 98%; font-family:
            -webkit-standard; font-size: 12pt; color: rgb(0, 0, 0);"
            tabindex="-1">
          <div id="divRplyFwdMsg" dir="ltr"><font face="Calibri,
              sans-serif"><b>From:</b> Marcus D. Leech
              <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
              <b>Sent:</b> Sunday, August 16, 2020 10:39 PM<br>
              <b>To:</b> Koyel Das (Vehere); <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Incorrect data from usrp
              2955
              <div> </div>
            </font></div>
          <meta content="text/html; charset=Windows-1252">
          <div class="moz-cite-prefix">On 08/16/2020 12:46 PM, Koyel Das
            (Vehere) wrote:<br>
          </div>
          <blockquote type="cite">
            <div dir="ltr">
              <div>
                <div dir="ltr">The measurement is not initial phase but
                  the phase difference between two channels </div>
                <div><br>
                </div>
                <div class="ms-outlook-ios-signature"
                  id="ms-outlook-mobile-signature">Get <a
                    moz-do-not-send="true" href="https://aka.ms/o0ukef">
                    Outlook for iOS</a></div>
              </div>
            </div>
          </blockquote>
          Are you using an external reference, or using the internal
          clock in the X310?<br>
          <br>
          If you observe an individual channel, is it "sane" ?  That is,
          apparently on-frequency, and with correct amplitudes and low
          distortion?<br>
          <br>
          <br>
          <blockquote type="cite">
            <div dir="ltr">
            </div>
            <hr tabindex="-1" style="display:inline-block; width:98%">
            <div id="divRplyFwdMsg" dir="ltr"><font
                style="font-size:11pt" color="#000000" face="Calibri,
                sans-serif"><b>From:</b> Koyel Das (Vehere)
                <a moz-do-not-send="true" class="moz-txt-link-rfc2396E"
                  href="mailto:koyel.das@vehere.com">&lt;koyel.das@vehere.com&gt;</a><br>
                <b>Sent:</b> Sunday, August 16, 2020 10:15:48 PM<br>
                <b>To:</b> Marcus D. Leech <a moz-do-not-send="true"
                  class="moz-txt-link-rfc2396E"
                  href="mailto:patchvonbraun@gmail.com">
                  &lt;patchvonbraun@gmail.com&gt;</a>; <a
                  moz-do-not-send="true"
                  class="moz-txt-link-abbreviated"
                  href="mailto:usrp-users@lists.ettus.com">
                  usrp-users@lists.ettus.com</a> <a
                  moz-do-not-send="true" class="moz-txt-link-rfc2396E"
                  href="mailto:usrp-users@lists.ettus.com">
                  &lt;usrp-users@lists.ettus.com&gt;</a><br>
                <b>Subject:</b> Re: [USRP-users] Incorrect data from
                usrp 2955</font>
              <div> </div>
            </div>
            <div>
              <div dir="ltr">
                <div>
                  <div dir="ltr"><span style="font-size:inherit">the
                      phase difference between two channels of USRP as a
                      function of frequency and time,  when measured by
                      splitting the same signal and feeding two channels
                      of usrp, are wandering around wrt one another
                      which was not happening before. I had given demo
                      more than 30 times based on this principle and
                      tested previously more than 50 times and I got
                      correct result every time. Now only suddenly it
                      started happening. The frequency is 2.4 GHz and
                      bandwidth I tried from 1 MHz to 100 MHz.
                      Previously the whole bandwidth was showing similar
                      values but then suddenly started behaving
                      abnormally giving near to correct result sometimes
                      and sometimes junk.</span><br>
                  </div>
                  <div dir="ltr"><span style="font-size:inherit"><br>
                    </span></div>
                  <div dir="ltr"><span style="font-size:inherit">Regards,</span></div>
                  <div dir="ltr">Koyel </div>
                  <div class="x_ms-outlook-ios-signature"
                    id="x_ms-outlook-mobile-signature">Get <a
                      moz-do-not-send="true"
                      href="https://aka.ms/o0ukef">
                      Outlook for iOS</a></div>
                </div>
                <div id="x_id-d2ed923a-74ce-4157-8a68-f15a06251364"
                  class="x_ms-outlook-mobile-reference-message">
                  <hr tabindex="-1" style="display:inline-block;
                    width:98%; font-size:12pt; color:rgb(0,0,0)">
                  <div id="x_divRplyFwdMsg" dir="ltr"><font
                      face="Calibri, sans-serif"><b>From:</b> Marcus D.
                      Leech
                      <a moz-do-not-send="true"
                        class="moz-txt-link-rfc2396E"
                        href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
                      <b>Sent:</b> Sunday, August 16, 2020 10:05 PM<br>
                      <b>To:</b> Koyel Das (Vehere); <a
                        moz-do-not-send="true"
                        class="moz-txt-link-abbreviated"
                        href="mailto:usrp-users@lists.ettus.com">
                        usrp-users@lists.ettus.com</a><br>
                      <b>Subject:</b> Re: [USRP-users] Incorrect data
                      from usrp 2955
                      <div> </div>
                    </font></div>
                  <meta content="text/html; charset=Windows-1252">
                  <div class="x_moz-cite-prefix">On 08/15/2020 11:59 PM,
                    Koyel Das (Vehere) wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div>
                        <div>No it doesn’t look better again after
                          reducing gain. Sometimes the phase differences
                          are closeby but not so same as we were getting
                          before and most of the times they are totally
                          incorrect. Strength of the signal when we
                          tried with maximum gain was near -40 dbm.</div>
                        <div dir="ltr"><br>
                        </div>
                        <div dir="ltr">Regards,</div>
                        <div dir="ltr">Koyel <br>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  To clarify some things.<br>
                  <br>
                  (A) The phase errors are just the initial phases--they
                  don't wander around with respect to one another during
                  a run?<br>
                  (B) What frequency range?<br>
                  <br>
                  <br>
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div>
                        <div><br>
                        </div>
                        <div class="x_ms-outlook-ios-signature"
                          id="x_ms-outlook-mobile-signature">Get <a
                            moz-do-not-send="true"
                            href="https://aka.ms/o0ukef">
                            Outlook for iOS</a></div>
                      </div>
                    </div>
                    <hr tabindex="-1" style="display:inline-block;
                      width:98%">
                    <div id="x_divRplyFwdMsg" dir="ltr"><font
                        style="font-size:11pt" color="#000000"
                        face="Calibri, sans-serif"><b>From:</b>
                        USRP-users
                        <a moz-do-not-send="true"
                          class="x_moz-txt-link-rfc2396E"
                          href="mailto:usrp-users-bounces@lists.ettus.com">
                          &lt;usrp-users-bounces@lists.ettus.com&gt;</a>
                        on behalf of Marcus D. Leech via USRP-users
                        <a moz-do-not-send="true"
                          class="x_moz-txt-link-rfc2396E"
                          href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
                        <b>Sent:</b> Sunday, August 16, 2020 12:25:37 AM<br>
                        <b>To:</b> <a moz-do-not-send="true"
                          class="x_moz-txt-link-abbreviated"
                          href="mailto:usrp-users@lists.ettus.com">
                          usrp-users@lists.ettus.com</a> <a
                          moz-do-not-send="true"
                          class="x_moz-txt-link-rfc2396E"
                          href="mailto:usrp-users@lists.ettus.com">
                          &lt;usrp-users@lists.ettus.com&gt;</a><br>
                        <b>Subject:</b> Re: [USRP-users] Incorrect data
                        from usrp 2955</font>
                      <div> </div>
                    </div>
                    <div style="background-color:#FFFFFF">
                      <div class="x_x_moz-cite-prefix">On 08/15/2020
                        01:16 PM, Koyel Das (Vehere) via USRP-users
                        wrote:<br>
                      </div>
                      <blockquote type="cite">
                        <div dir="ltr">
                          <div>
                            <div><span>Hi,<br>
                              </span>
                              <div dir="ltr"><br>
                              </div>
                              <span>We are using USRP 2955. Something
                                has gone wrong. Before we were getting
                                constant phase difference across
                                channels for limited bandwidth and with
                                time when we split single antenna signal
                                using splitter and fed two channels of
                                USRP but now it is not doing so. This
                                happened on Friday that after getting a
                                series of correct results : constant
                                phase difference across channels by
                                feeding signal using splitter as
                                mentioned above, we suddenly started to
                                receive wrong data: random phase  across
                                channels and with time using the same
                                setup with splitter. The thing we did
                                was setting gain to near maximum and
                                receiving 100 MHz sample rate. But I
                                don't think amplifier has damaged
                                because in this usrp we have four
                                independent channels and when we
                                connected the splitter to unused
                                channels then also we got wrong data.
                                What can go wrong that USRP is streaming
                                data but phases are wrong? What do you
                                think? Please let me know.</span><br>
                            </div>
                            <div dir="ltr"><span><br>
                              </span></div>
                            <div dir="ltr"><span>Regards,</span></div>
                            <div dir="ltr"><span>Koyel </span></div>
                            <div><br>
                            </div>
                            <div class="x_x_ms-outlook-ios-signature"
                              id="x_x_ms-outlook-mobile-signature">Get
                              <a moz-do-not-send="true"
                                href="https://aka.ms/o0ukef">Outlook for
                                iOS</a></div>
                          </div>
                        </div>
                        <br>
                        <fieldset class="x_x_mimeAttachmentHeader"></fieldset>
                        <br>
                        <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="x_x_moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="x_x_moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                      </blockquote>
                      Does it look better again when you reduce the
                      gain?<br>
                      <br>
                      What is the magnitude of the signals going to the
                      RX ports?<br>
                      <br>
                      <br>
                    </div>
                  </blockquote>
                  <br>
                </div>
              </div>
            </div>
          </blockquote>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030809080605010408010903--


--===============5306643501065705646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5306643501065705646==--

