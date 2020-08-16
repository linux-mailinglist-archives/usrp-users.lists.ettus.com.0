Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A4B2458AD
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 19:11:33 +0200 (CEST)
Received: from [::1] (port=45684 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7MBv-0002na-PY; Sun, 16 Aug 2020 13:11:31 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:36545)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k7MBr-0002ez-Vh
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 13:11:28 -0400
Received: by mail-qt1-f177.google.com with SMTP id t23so10768657qto.3
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 10:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=+DkqHzL8niF1hmYhL+uyNu9nQvvpzgG1FcErFh69Q6w=;
 b=pcw78PN/BJOlyluldQ+s7NpnAReb2nSrAmfnw3ZUnHhvLb3N7d0MBm4bOckQMR+2EE
 STjnzJKZcMLWcmx5dqkvQ5SaVr7Bo3rfiM3EammSZpCZPuFJXN84NVaSlZP23la/snE7
 BWvoLPGfIFIExHULFU2ESr6Zn4IOQxVTX9ZIpcwcBGl30wxJEcRx9orw89IT0K8p54LY
 xLBoYqCUTugWgIvvKWUxMMPK2F40G28/8PQEupbgrTYsyqVmX7HS5TXDqg3+v9Sv0rF6
 hO/tVz/MJiYaUwdKg/CDJKq+rjjpSj7TdX7JJfJjecJccND0BC+4QhuseQEINd50DA9L
 +F8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=+DkqHzL8niF1hmYhL+uyNu9nQvvpzgG1FcErFh69Q6w=;
 b=DZghGMh/0KC+H8/O3BKRa/IEfi2Dskk1YiIxsL2bArOHN+cNJEBQwvNrCkFQMGIW9P
 tkbHLfm/j5xWKOBIeK23hJeYf4bHNluHF/l2mjwvG0QRD9RvD7vipXv3oN8jfpP7BvJl
 MoKwrTs734fNZEBm096GwFCS/0iCx3Syt618kPzEPzLFaW+qb4NwaWKGLj8289TPue5t
 sVXoY6ShpjnD8donZAh65F5RivtBfD93g4cMLuJiIDa+C2oVieFCSW9h8KzuAaCIhFiY
 pSktfqx6GNs5g76txNOyR5m/ArMY3JeBfhNPwniJdRiWyDXYIIhEPxdfv90iH1AfLiSb
 qe+w==
X-Gm-Message-State: AOAM532I03AZfK8/xEgfNY3pcblIBFv/wHA4fIZ1D/8ErWSHFvNwo5Ff
 qSmaZkQUqJLqqoF8/3ZnHVCDoLDGJi4slQ==
X-Google-Smtp-Source: ABdhPJx0hNmmp88DM7vsAejIucyFJP6XGQzAIoU3DU6YrPUma0j7oTE7h6aOwOiJNYTdIu9ohcApaw==
X-Received: by 2002:ac8:4652:: with SMTP id f18mr10079416qto.142.1597597846693; 
 Sun, 16 Aug 2020 10:10:46 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id u37sm17292635qtj.47.2020.08.16.10.10.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Aug 2020 10:10:46 -0700 (PDT)
Message-ID: <5F396895.7060903@gmail.com>
Date: Sun, 16 Aug 2020 13:10:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39604D.6030303@gmail.com>,
 <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <MA1PR01MB2588B859845EA8B4E4FB4477905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB258886E81DC683CA9DF30592905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB258886E81DC683CA9DF30592905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
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
Content-Type: multipart/mixed; boundary="===============2996754405406789873=="
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
--===============2996754405406789873==
Content-Type: multipart/alternative;
 boundary="------------020306050302060100070506"

This is a multi-part message in MIME format.
--------------020306050302060100070506
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 08/16/2020 01:08 PM, Koyel Das (Vehere) wrote:
> If you want I can send you the matlab code. You just have to capture 
> two channels of usrp better with grc and save those as .bin files. 
> Then you can run my matlab code. You just have to change the file 
> names in the code with the names that you give in your .bin files. You 
> should be getting same phase differences across frequency and channels 
> and the values are stored in one vector in the code that you can see
I don't use Matlab.


>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------------------------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
> Koyel Das (Vehere) via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Sunday, August 16, 2020 10:16:54 PM
> *To:* Marcus D. Leech <patchvonbraun@gmail.com>; 
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
> The measurement is not initial phase but the phase difference between 
> two channels
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------------------------------------------------
> *From:* Koyel Das (Vehere) <koyel.das@vehere.com>
> *Sent:* Sunday, August 16, 2020 10:15:48 PM
> *To:* Marcus D. Leech <patchvonbraun@gmail.com>; 
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
> the phase difference between two channels of USRP as a function of 
> frequency and time,  when measured by splitting the same signal and 
> feeding two channels of usrp, are wandering around wrt one another 
> which was not happening before. I had given demo more than 30 times 
> based on this principle and tested previously more than 50 times and I 
> got correct result every time. Now only suddenly it started happening. 
> The frequency is 2.4 GHz and bandwidth I tried from 1 MHz to 100 MHz. 
> Previously the whole bandwidth was showing similar values but then 
> suddenly started behaving abnormally giving near to correct result 
> sometimes and sometimes junk.
>
> Regards,
> Koyel
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------------------------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Sunday, August 16, 2020 10:05 PM
> *To:* Koyel Das (Vehere); usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
> On 08/15/2020 11:59 PM, Koyel Das (Vehere) wrote:
>> No it doesn’t look better again after reducing gain. Sometimes the 
>> phase differences are closeby but not so same as we were getting 
>> before and most of the times they are totally incorrect. Strength of 
>> the signal when we tried with maximum gain was near -40 dbm.
>>
>> Regards,
>> Koyel
> To clarify some things.
>
> (A) The phase errors are just the initial phases--they don't wander 
> around with respect to one another during a run?
> (B) What frequency range?
>
>
>>
>> Get Outlook for iOS <https://aka.ms/o0ukef>
>> ------------------------------------------------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> 
>> <mailto:usrp-users-bounces@lists.ettus.com> on behalf of Marcus D. 
>> Leech via USRP-users <usrp-users@lists.ettus.com> 
>> <mailto:usrp-users@lists.ettus.com>
>> *Sent:* Sunday, August 16, 2020 12:25:37 AM
>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> 
>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com>
>> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
>> On 08/15/2020 01:16 PM, Koyel Das (Vehere) via USRP-users wrote:
>>> Hi,
>>>
>>> We are using USRP 2955. Something has gone wrong. Before we were 
>>> getting constant phase difference across channels for limited 
>>> bandwidth and with time when we split single antenna signal using 
>>> splitter and fed two channels of USRP but now it is not doing so. 
>>> This happened on Friday that after getting a series of correct 
>>> results : constant phase difference across channels by feeding 
>>> signal using splitter as mentioned above, we suddenly started to 
>>> receive wrong data: random phase  across channels and with time 
>>> using the same setup with splitter. The thing we did was setting 
>>> gain to near maximum and receiving 100 MHz sample rate. But I don't 
>>> think amplifier has damaged because in this usrp we have four 
>>> independent channels and when we connected the splitter to unused 
>>> channels then also we got wrong data. What can go wrong that USRP is 
>>> streaming data but phases are wrong? What do you think? Please let 
>>> me know.
>>>
>>> Regards,
>>> Koyel
>>>
>>> Get Outlook for iOS <https://aka.ms/o0ukef>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> Does it look better again when you reduce the gain?
>>
>> What is the magnitude of the signals going to the RX ports?
>>
>>
>


--------------020306050302060100070506
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/16/2020 01:08 PM, Koyel Das
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB258886E81DC683CA9DF30592905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>If you want I can send you the matlab code. You just have
            to capture two channels of usrp better with grc and save
            those as .bin files. Then you can run my matlab code. You
            just have to change the file names in the code with the
            names that you give in your .bin files. You should be
            getting same phase differences across frequency and channels
            and the values are stored in one vector in the code that you
            can see <br>
          </div>
        </div>
      </div>
    </blockquote>
    I don't use Matlab.<br>
    <br>
    <br>
    <blockquote
cite="mid:MA1PR01MB258886E81DC683CA9DF30592905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <div dir="ltr">
        <div>
          <div><br>
          </div>
          <div class="ms-outlook-ios-signature"
            id="ms-outlook-mobile-signature">Get <a
              moz-do-not-send="true" href="https://aka.ms/o0ukef">
              Outlook for iOS</a></div>
        </div>
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>From:</b>
          USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on
          behalf of Koyel Das (Vehere) via USRP-users
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Sent:</b> Sunday, August 16, 2020 10:16:54 PM<br>
          <b>To:</b> Marcus D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>;
          <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a> <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
        <div> </div>
      </div>
      <div>
        <div dir="ltr">
          <div>
            <div dir="ltr">The measurement is not initial phase but the
              phase difference between two channels </div>
            <div><br>
            </div>
            <div class="x_ms-outlook-ios-signature"
              id="x_ms-outlook-mobile-signature">Get <a
                moz-do-not-send="true" href="https://aka.ms/o0ukef">
                Outlook for iOS</a></div>
          </div>
        </div>
        <hr tabindex="-1" style="display:inline-block; width:98%">
        <div id="x_divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
            color="#000000" face="Calibri, sans-serif"><b>From:</b>
            Koyel Das (Vehere) <a class="moz-txt-link-rfc2396E" href="mailto:koyel.das@vehere.com">&lt;koyel.das@vehere.com&gt;</a><br>
            <b>Sent:</b> Sunday, August 16, 2020 10:15:48 PM<br>
            <b>To:</b> Marcus D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>;
            <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
            <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
            <b>Subject:</b> Re: [USRP-users] Incorrect data from usrp
            2955</font>
          <div> </div>
        </div>
        <div>
          <div dir="ltr">
            <div>
              <div dir="ltr"><span style="font-size:inherit">the phase
                  difference between two channels of USRP as a function
                  of frequency and time,  when measured by splitting the
                  same signal and feeding two channels of usrp, are
                  wandering around wrt one another which was not
                  happening before. I had given demo more than 30 times
                  based on this principle and tested previously more
                  than 50 times and I got correct result every time. Now
                  only suddenly it started happening. The frequency is
                  2.4 GHz and bandwidth I tried from 1 MHz to 100 MHz.
                  Previously the whole bandwidth was showing similar
                  values but then suddenly started behaving abnormally
                  giving near to correct result sometimes and sometimes
                  junk.</span><br>
              </div>
              <div dir="ltr"><span style="font-size:inherit"><br>
                </span></div>
              <div dir="ltr"><span style="font-size:inherit">Regards,</span></div>
              <div dir="ltr">Koyel </div>
              <div class="x_x_ms-outlook-ios-signature"
                id="x_x_ms-outlook-mobile-signature">Get
                <a moz-do-not-send="true" href="https://aka.ms/o0ukef">Outlook
                  for iOS</a></div>
            </div>
            <div id="x_x_id-d2ed923a-74ce-4157-8a68-f15a06251364"
              class="x_x_ms-outlook-mobile-reference-message">
              <hr tabindex="-1" style="display:inline-block; width:98%;
                font-size:12pt; color:rgb(0,0,0)">
              <div id="x_x_divRplyFwdMsg" dir="ltr"><font face="Calibri,
                  sans-serif"><b>From:</b> Marcus D. Leech
                  <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
                  <b>Sent:</b> Sunday, August 16, 2020 10:05 PM<br>
                  <b>To:</b> Koyel Das (Vehere);
                  <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> Re: [USRP-users] Incorrect data from
                  usrp 2955
                  <div> </div>
                </font></div>
              <meta content="text/html; charset=Windows-1252">
              <div class="x_x_moz-cite-prefix">On 08/15/2020 11:59 PM,
                Koyel Das (Vehere) wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">
                  <div>
                    <div>No it doesn’t look better again after reducing
                      gain. Sometimes the phase differences are closeby
                      but not so same as we were getting before and most
                      of the times they are totally incorrect. Strength
                      of the signal when we tried with maximum gain was
                      near -40 dbm.</div>
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
              don't wander around with respect to one another during a
              run?<br>
              (B) What frequency range?<br>
              <br>
              <br>
              <blockquote type="cite">
                <div dir="ltr">
                  <div>
                    <div><br>
                    </div>
                    <div class="x_x_ms-outlook-ios-signature"
                      id="x_x_ms-outlook-mobile-signature">Get
                      <a moz-do-not-send="true"
                        href="https://aka.ms/o0ukef">Outlook for iOS</a></div>
                  </div>
                </div>
                <hr tabindex="-1" style="display:inline-block;
                  width:98%">
                <div id="x_x_divRplyFwdMsg" dir="ltr"><font
                    style="font-size:11pt" color="#000000"
                    face="Calibri, sans-serif"><b>From:</b> USRP-users
                    <a moz-do-not-send="true"
                      class="x_x_moz-txt-link-rfc2396E"
                      href="mailto:usrp-users-bounces@lists.ettus.com">
                      &lt;usrp-users-bounces@lists.ettus.com&gt;</a> on
                    behalf of Marcus D. Leech via USRP-users
                    <a moz-do-not-send="true"
                      class="x_x_moz-txt-link-rfc2396E"
                      href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
                    <b>Sent:</b> Sunday, August 16, 2020 12:25:37 AM<br>
                    <b>To:</b> <a moz-do-not-send="true"
                      class="x_x_moz-txt-link-abbreviated"
                      href="mailto:usrp-users@lists.ettus.com">
                      usrp-users@lists.ettus.com</a> <a
                      moz-do-not-send="true"
                      class="x_x_moz-txt-link-rfc2396E"
                      href="mailto:usrp-users@lists.ettus.com">
                      &lt;usrp-users@lists.ettus.com&gt;</a><br>
                    <b>Subject:</b> Re: [USRP-users] Incorrect data from
                    usrp 2955</font>
                  <div> </div>
                </div>
                <div style="background-color:#FFFFFF">
                  <div class="x_x_x_moz-cite-prefix">On 08/15/2020 01:16
                    PM, Koyel Das (Vehere) via USRP-users wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div>
                        <div><span>Hi,<br>
                          </span>
                          <div dir="ltr"><br>
                          </div>
                          <span>We are using USRP 2955. Something has
                            gone wrong. Before we were getting constant
                            phase difference across channels for limited
                            bandwidth and with time when we split single
                            antenna signal using splitter and fed two
                            channels of USRP but now it is not doing so.
                            This happened on Friday that after getting a
                            series of correct results : constant phase
                            difference across channels by feeding
                            signal using splitter as mentioned above, we
                            suddenly started to receive wrong data:
                            random phase  across channels and with time
                            using the same setup with splitter. The
                            thing we did was setting gain to near
                            maximum and receiving 100 MHz sample rate.
                            But I don't think amplifier has damaged
                            because in this usrp we have four
                            independent channels and when we connected
                            the splitter to unused channels then also we
                            got wrong data. What can go wrong that USRP
                            is streaming data but phases are wrong? What
                            do you think? Please let me know.</span><br>
                        </div>
                        <div dir="ltr"><span><br>
                          </span></div>
                        <div dir="ltr"><span>Regards,</span></div>
                        <div dir="ltr"><span>Koyel </span></div>
                        <div><br>
                        </div>
                        <div class="x_x_x_ms-outlook-ios-signature"
                          id="x_x_x_ms-outlook-mobile-signature">
                          Get <a moz-do-not-send="true"
                            href="https://aka.ms/o0ukef">Outlook for iOS</a></div>
                      </div>
                    </div>
                    <br>
                    <fieldset class="x_x_x_mimeAttachmentHeader"></fieldset>
                    <br>
                    <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="x_x_x_moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="x_x_x_moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                  </blockquote>
                  Does it look better again when you reduce the gain?<br>
                  <br>
                  What is the magnitude of the signals going to the RX
                  ports?<br>
                  <br>
                  <br>
                </div>
              </blockquote>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020306050302060100070506--


--===============2996754405406789873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2996754405406789873==--

