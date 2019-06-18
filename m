Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDCF4A61C
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 18:02:50 +0200 (CEST)
Received: from [::1] (port=47374 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdGZK-0001gX-6Z; Tue, 18 Jun 2019 12:02:46 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:41982)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hdGZG-0001Ym-Hd
 for usrp-users@lists.ettus.com; Tue, 18 Jun 2019 12:02:42 -0400
Received: by mail-qt1-f170.google.com with SMTP id d17so11001019qtj.8
 for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2019 09:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=kVh7THzQj9EGXEuguZTRa56uD0UqyxgTva1XXtpCNDw=;
 b=XwhF20OJuM+/Op6zbkTR05UgyV4fqzVAA+nEi15NFrwLHmyRAcA/B3Qr3v15Qu7tNG
 7OGuicbJ5dunhxtAkGbJtfq8liJthGtNwwcRc/522/bMqvy1UsDqqGDSBzBkZ7bAGBJ/
 08QN/1UqjNkq6X6NpOtGNH3bWU+1WRNg7OKIZSCzSLLm3NixcGnJynsZYwiEzuvPkbY3
 7QN1DzyNYmPTVeLVFSBGVZFyTqFA34arhu2sIjQaqqxNFtPj8qJcalB9zM1xpRLIezIG
 Z4yB41uQblUJhjNbNTZig3k6dQ/R26GDb1x8D80tiac2bdT6AITrvOsGNG0+Pw6jtd/a
 KYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=kVh7THzQj9EGXEuguZTRa56uD0UqyxgTva1XXtpCNDw=;
 b=W8FBCNrA+PE5oiav5vvQOHFW35o0grCR/3ZzIJ/F6mqOVQwWimbyZl3/ITS1fDfBV3
 QhhwWzb3ALrnKBOnVvXxmGGqwhMbpUFu/Y8aaaR2HmpjZbI3XebF1VJ/5tiJ1p78Xxez
 NVd05fcKjj0ieTrVuG/OX1M4ehMXicFVjRXQpD9+eNCdtXJGGAymo3TDFDdQwnF6azDc
 mV1W6ZQ7hslmIZgdf1QTBUJW4makmshYi+vVx177gA8J5OZ4Vj3BXR/BSz/oarxf1xAH
 hytkxu5FXLCtcQiTvy5j/vpZ3zU8/T0Aa/MlniB9nKiCbt3TYWZD/lVuY/4Os5EWFZ/A
 VQAg==
X-Gm-Message-State: APjAAAU6kpegH71bQBcCiMO/uSbbTPKDRTz2hnCxtzpvnojTJqF21MbN
 lHAU+umTv5T+chYoF1mPPh/uOrbe
X-Google-Smtp-Source: APXvYqwHxaKtbcbKXcZAy48vdytShrxXK8ZCuS9X1wiNrO8uhtuGvhtq9nIHEMBTTUV9RzvqUkwazA==
X-Received: by 2002:a0c:e712:: with SMTP id d18mr27646362qvn.152.1560873721939; 
 Tue, 18 Jun 2019 09:02:01 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id b23sm9473982qte.19.2019.06.18.09.02.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 09:02:01 -0700 (PDT)
Message-ID: <5D090AF8.4030405@gmail.com>
Date: Tue, 18 Jun 2019 12:02:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Donnie C <dbc23910@gmail.com>
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
 <5D07FF68.9080804@gmail.com>
 <CAO_1D1W9h1hg_182mQ5oDZbaVqHNgFnu9gjPnMZ08ZLd0eSNgA@mail.gmail.com>
 <5D080359.8070609@gmail.com>
 <CAO_1D1Web8+vG02Sqra-eBxnHTZiMEFnwc2rDzSjuL=-VryCLQ@mail.gmail.com>
 <5D08067E.90306@gmail.com>
 <CAO_1D1V5-7c_L1HY3T0FtpWiQ+mkyxjpxaOHRgJA4=jYZqsPrg@mail.gmail.com>
In-Reply-To: <CAO_1D1V5-7c_L1HY3T0FtpWiQ+mkyxjpxaOHRgJA4=jYZqsPrg@mail.gmail.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6921315274257049353=="
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
--===============6921315274257049353==
Content-Type: multipart/alternative;
 boundary="------------090003000801020304080304"

This is a multi-part message in MIME format.
--------------090003000801020304080304
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/18/2019 09:55 AM, Donnie C wrote:
> The download sizes appear to be fine, and I am not using FTP, could it 
> be something to do with the partitions of the microSD card? I was 
> reading the Ettus tutorial again and it refered to the sd card having 
> a few partitions one of which is a boot partition, is the image 
> suppose to create this partition?
The image contains everything you need.

You did *uncompress* the image after downloading it?


>
> On Mon, Jun 17, 2019 at 3:30 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/17/2019 05:27 PM, Donnie C wrote:
>>     Its definitely being written to the right place /dev folder
>>     doesnt have anything large under it, but how would you check if
>>     the image was downloaded in text mode?
>     Some windows FTP clients default to text mode, even when
>     downloading binary data.  But that would only apply if you used FTP.
>
>     You sure your download didn't fail in the middle?  Compare the sizes.
>
>
>>
>>     On Mon, Jun 17, 2019 at 3:17 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         On 06/17/2019 05:09 PM, Donnie C wrote:
>>         > Im pretty sure the speed grade matches so it must be an
>>         incorrect sd
>>         > card burn, but as far as I can tell I followed the ettus
>>         tutorial for
>>         > sd image burning, is there any extra steps involved they
>>         don't go over?
>>         Bad card?  Bad card burner?  Pulled the card before the I/O
>>         had been
>>         fully flushed out to it?  Downloaded the image in text mode? 
>>         Got the
>>            device name wrong when burning, and now you have a large
>>         file under
>>         /dev, instead of written out to the actual card?
>>
>>
>


--------------090003000801020304080304
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/18/2019 09:55 AM, Donnie C wrote:<br>
    </div>
    <blockquote
cite="mid:CAO_1D1V5-7c_L1HY3T0FtpWiQ+mkyxjpxaOHRgJA4=jYZqsPrg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">The download sizes appear to be fine, and I am
          not using FTP, could it be something to do with the partitions
          of the microSD card? I was reading the Ettus tutorial again
          and it refered to the sd card having a few partitions one of
          which is a boot partition, is the image suppose to create this
          partition?</div>
      </div>
    </blockquote>
    The image contains everything you need.<br>
    <br>
    You did *uncompress* the image after downloading it?<br>
    <br>
    <br>
    <blockquote
cite="mid:CAO_1D1V5-7c_L1HY3T0FtpWiQ+mkyxjpxaOHRgJA4=jYZqsPrg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr"><br>
        </div>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Mon, Jun 17, 2019 at 3:30
            PM Marcus D. Leech &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <div class="gmail-m_7068035594790689265moz-cite-prefix">On
                06/17/2019 05:27 PM, Donnie C wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">
                  <div>Its definitely being written to the right place
                    /dev folder doesnt have anything large under it, but
                    how would you check if the image was downloaded in
                    text mode?</div>
                </div>
              </blockquote>
              Some windows FTP clients default to text mode, even when
              downloading binary data.  But that would only apply if you
              used FTP.<br>
              <br>
              You sure your download didn't fail in the middle?  Compare
              the sizes.<br>
              <br>
              <br>
              <blockquote type="cite">
                <div dir="ltr"><br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">On Mon, Jun 17,
                      2019 at 3:17 PM Marcus D. Leech &lt;<a
                        moz-do-not-send="true"
                        href="mailto:patchvonbraun@gmail.com"
                        target="_blank">patchvonbraun@gmail.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">On 06/17/2019
                      05:09 PM, Donnie C wrote:<br>
                      &gt; Im pretty sure the speed grade matches so it
                      must be an incorrect sd <br>
                      &gt; card burn, but as far as I can tell I
                      followed the ettus tutorial for <br>
                      &gt; sd image burning, is there any extra steps
                      involved they don't go over?<br>
                      Bad card?  Bad card burner?  Pulled the card
                      before the I/O had been <br>
                      fully flushed out to it?  Downloaded the image in
                      text mode?  Got the<br>
                         device name wrong when burning, and now you
                      have a large file under <br>
                      /dev, instead of written out to the actual card?<br>
                      <br>
                      <br>
                    </blockquote>
                  </div>
                </div>
              </blockquote>
              <br>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090003000801020304080304--


--===============6921315274257049353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6921315274257049353==--

