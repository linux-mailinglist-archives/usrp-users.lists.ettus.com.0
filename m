Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94379245891
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 18:36:15 +0200 (CEST)
Received: from [::1] (port=45420 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7Ldj-0007wN-Vm; Sun, 16 Aug 2020 12:36:12 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:41000)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k7Ldg-0007o1-Cf
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 12:36:08 -0400
Received: by mail-qt1-f177.google.com with SMTP id v22so10713867qtq.8
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 09:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=8ustNObGYDpRXUTGg/4SvMYbpgOhUZKUz8UEjNar/4g=;
 b=sEDCJmKp5v9vyRzhu2Y2mrbWTqzB0VaPiUVxM1O68fDjTPVdUJLRQs2MOiB8ofT+CO
 zFn5CE2BC6zRwV+I8b/ztvCBVOIuBWqGkV7lq7Qlb+QgOvV1yHI+o6Arc7rbvjs1nXo9
 32bakt+QEyLYZuuNwQLTvfY5BMrCWHku56tRPqQfZHRR1j7jG1yEcw0+UYqpNbP1CHvc
 tVjSQv8jvSsu6jv35VajZFgEiYDazP8DwQ6C47v8I15w3Y1wra3EAgiEZ24REssraEuu
 nrJ1U6hX1RW1xpYYl5N3omiOuzbFnAlm6C5D51tdfOqq+jmR99JamYy/+qqO/ckp5Mgc
 plbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=8ustNObGYDpRXUTGg/4SvMYbpgOhUZKUz8UEjNar/4g=;
 b=pZglBFoTDu1OMHrl8Go9KveYFwhUH+V2/TPVvA245UrPesCgZFCslwnLK9K2c1NxqS
 zhsDRVfIBDt4zmFgco9mj/JhwNM1TVbeEhHcHQzpKC7Ljfsl9sMff39YE0R/hNkgY448
 qCCxFK+FJ7q98LxAOrDhupHFcYOUuBdmzSzrEKnoc1v201GGX3x1jZgD/qdboQXUt5yE
 UsLjnkNzXB3Qk3kKa8+QxDoKVxbdADufuP+Xo8vslr88j2c+9gH1HVLnIAZyTlSx005u
 Uc2K1UirC0iPFkQ0sO+wXGj8eOMEE4YRBrfo5h1LV/++lZFH99GzwlVxtBVk7dc0Q9dx
 wCXg==
X-Gm-Message-State: AOAM532u9mAyfxMftHsXp0LBVnI2WW1W0Qg+ovAkIVX7RIt59vMGoeWL
 clRYKhUMkWnpFH5wwcpiHORFdlEEnsjVIQ==
X-Google-Smtp-Source: ABdhPJwYfHrOgk3lhv3p2vzffG9ooKb49ePlmgsH6AO9J86nUqPTgUChixf3lVhD8r2Se2XJqYObGA==
X-Received: by 2002:ac8:73d1:: with SMTP id v17mr10212219qtp.51.1597595727352; 
 Sun, 16 Aug 2020 09:35:27 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id f92sm16839241qtd.9.2020.08.16.09.35.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Aug 2020 09:35:26 -0700 (PDT)
Message-ID: <5F39604D.6030303@gmail.com>
Date: Sun, 16 Aug 2020 12:35:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
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
Content-Type: multipart/mixed; boundary="===============0556721066240506972=="
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
--===============0556721066240506972==
Content-Type: multipart/alternative;
 boundary="------------020607080704010901030003"

This is a multi-part message in MIME format.
--------------020607080704010901030003
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 08/15/2020 11:59 PM, Koyel Das (Vehere) wrote:
> No it doesn’t look better again after reducing gain. Sometimes the 
> phase differences are closeby but not so same as we were getting 
> before and most of the times they are totally incorrect. Strength of 
> the signal when we tried with maximum gain was near -40 dbm.
>
> Regards,
> Koyel
To clarify some things.

(A) The phase errors are just the initial phases--they don't wander 
around with respect to one another during a run?
(B) What frequency range?


>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------------------------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Sunday, August 16, 2020 12:25:37 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Incorrect data from usrp 2955
> On 08/15/2020 01:16 PM, Koyel Das (Vehere) via USRP-users wrote:
>> Hi,
>>
>> We are using USRP 2955. Something has gone wrong. Before we were 
>> getting constant phase difference across channels for limited 
>> bandwidth and with time when we split single antenna signal using 
>> splitter and fed two channels of USRP but now it is not doing so. 
>> This happened on Friday that after getting a series of correct 
>> results : constant phase difference across channels by feeding 
>> signal using splitter as mentioned above, we suddenly started to 
>> receive wrong data: random phase  across channels and with time using 
>> the same setup with splitter. The thing we did was setting gain to 
>> near maximum and receiving 100 MHz sample rate. But I don't think 
>> amplifier has damaged because in this usrp we have four independent 
>> channels and when we connected the splitter to unused channels then 
>> also we got wrong data. What can go wrong that USRP is streaming data 
>> but phases are wrong? What do you think? Please let me know.
>>
>> Regards,
>> Koyel
>>
>> Get Outlook for iOS <https://aka.ms/o0ukef>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> Does it look better again when you reduce the gain?
>
> What is the magnitude of the signals going to the RX ports?
>
>


--------------020607080704010901030003
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/15/2020 11:59 PM, Koyel Das
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>No it doesn’t look better again after reducing gain.
            Sometimes the phase differences are closeby but not so same
            as we were getting before and most of the times they are
            totally incorrect. Strength of the signal when we tried with
            maximum gain was near -40 dbm.</div>
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
    (A) The phase errors are just the initial phases--they don't wander
    around with respect to one another during a run?<br>
    (B) What frequency range?<br>
    <br>
    <br>
    <blockquote
cite="mid:MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
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
          behalf of Marcus D. Leech via USRP-users
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Sent:</b> Sunday, August 16, 2020 12:25:37 AM<br>
          <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
        <div> </div>
      </div>
      <div style="background-color:#FFFFFF">
        <div class="x_moz-cite-prefix">On 08/15/2020 01:16 PM, Koyel Das
          (Vehere) via USRP-users wrote:<br>
        </div>
        <blockquote type="cite">
          <div dir="ltr">
            <div>
              <div><span>Hi,<br>
                </span>
                <div dir="ltr"><br>
                </div>
                <span>We are using USRP 2955. Something has gone wrong.
                  Before we were getting constant phase difference
                  across channels for limited bandwidth and with time
                  when we split single antenna signal using splitter and
                  fed two channels of USRP but now it is not doing so.
                  This happened on Friday that after getting a series of
                  correct results : constant phase difference across
                  channels by feeding signal using splitter as mentioned
                  above, we suddenly started to receive wrong data:
                  random phase  across channels and with time using the
                  same setup with splitter. The thing we did was setting
                  gain to near maximum and receiving 100 MHz sample
                  rate. But I don't think amplifier has damaged because
                  in this usrp we have four independent channels and
                  when we connected the splitter to unused channels then
                  also we got wrong data. What can go wrong that USRP is
                  streaming data but phases are wrong? What do you
                  think? Please let me know.</span><br>
              </div>
              <div dir="ltr"><span><br>
                </span></div>
              <div dir="ltr"><span>Regards,</span></div>
              <div dir="ltr"><span>Koyel </span></div>
              <div><br>
              </div>
              <div class="x_ms-outlook-ios-signature"
                id="x_ms-outlook-mobile-signature">Get <a
                  moz-do-not-send="true" href="https://aka.ms/o0ukef">
                  Outlook for iOS</a></div>
            </div>
          </div>
          <br>
          <fieldset class="x_mimeAttachmentHeader"></fieldset>
          <br>
          <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="x_moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="x_moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
        </blockquote>
        Does it look better again when you reduce the gain?<br>
        <br>
        What is the magnitude of the signals going to the RX ports?<br>
        <br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020607080704010901030003--


--===============0556721066240506972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0556721066240506972==--

