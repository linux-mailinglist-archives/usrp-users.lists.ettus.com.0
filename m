Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2714205BCC
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 21:31:22 +0200 (CEST)
Received: from [::1] (port=53606 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnodc-0000eq-Fy; Tue, 23 Jun 2020 15:31:20 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:44107)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jnodY-0000Qp-Sm
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 15:31:16 -0400
Received: by mail-qt1-f181.google.com with SMTP id j10so7728236qtq.11
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 12:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=7sRWaroTvAb3sgPJ+AINuyWnQFUQIBaSp78f537ysAY=;
 b=oYBaCxHT05BepP5YFcUTN7byDzJ0Wu5JxZSAmjFJQWTCOyo2Dv2S3AYWvVsPhk4ZrZ
 uk+TaQh9kF/yJsweOU5b1K1BixpL5htRHKrIXLe/tpXlUxefJqu697U5cQrREW4Zxq1A
 /8MpPMpkX9D//PZxLKFZxlEdpjoEn1SspJxoIyfkZJi9K2lMAb185wi4XTicoQheh3Yu
 d9cPdIvXIdH5bRToSBsqmM+rLFm3uEgbCJMrG4pkUzKp/urICWCcWs7QTDM01h1LNVbV
 G2gqRhlkD/Yga2/qZQfExWr4AxaEUK7HTPzXsZdN6M4aB0o75lj9xHFApUsZ67jQU1qI
 CT5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=7sRWaroTvAb3sgPJ+AINuyWnQFUQIBaSp78f537ysAY=;
 b=WNHAIS2QJPFQ0kIH9bb4vyds6ZWgriZfZI8E/U+98+gd0DDOZRsXvn7YOeA3IC7IzW
 n3bNPOLilBpQZU2cEaXw55BliVpeDoMpW4Al4uWxpIms3P6JOU+vEiPBT41ulN/oiKKE
 hDjnnW8UT+bBYhrvpOfACUX/L4/OC/l3WMlVbHo76P+t6Aw9Z5BBujYd6HbwJCGFzAkx
 gPozsM8TAOCdewejGNJSf/Ng6RNQlU5HbsAVEpnUpSPPB2sriCJS9KkNRbdC1wakeJ8b
 Pzk8CIF4nmgIegM/S71hZ6M7Cpz+7WgdjlYbQvF96JaHemMiU1iDXM38O7HNgOECanTc
 XLpA==
X-Gm-Message-State: AOAM531ASKerdEbM6Oq35OdcNfvEZSzOeoI2mmc2H2xk5qby2IJQycGp
 KsRL/CtkTEKaE2gd3yXur4E3ks1absA=
X-Google-Smtp-Source: ABdhPJz92II9VG9n0UwW+g+/S9IBhY1lAwPjp8SV90TdAnXiXyi/SzwASIHcXX1eBmmp2XOvQyb00w==
X-Received: by 2002:ac8:3777:: with SMTP id p52mr8327145qtb.31.1592940636178; 
 Tue, 23 Jun 2020 12:30:36 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id i10sm1735824qkn.126.2020.06.23.12.30.35
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jun 2020 12:30:35 -0700 (PDT)
Message-ID: <5EF2585B.1090909@gmail.com>
Date: Tue, 23 Jun 2020 15:30:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1>
 <5EF15135.6050502@gmail.com> <07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1>
In-Reply-To: <07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1>
Subject: Re: [USRP-users] GRC up-grade - installation issues
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
Content-Type: multipart/mixed; boundary="===============5066341009760381917=="
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
--===============5066341009760381917==
Content-Type: multipart/alternative;
 boundary="------------090706080608040401020700"

This is a multi-part message in MIME format.
--------------090706080608040401020700
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 06/23/2020 03:23 PM, David Taylor (manx.net) via USRP-users wrote:
> Marcus.
> Many thanks for your prompt reply.
> Complete removal of everything from /usr/share/uhd/images, then 
> running the images-downloader from /usr/bin works fine.
> I have only managed to try this with a B210 as the other transceivers 
> remain in the laboratory under Covid19 university building closure 
> measures.
> The N210 is yet to be used, but thanks for the advising on the 
> particular EEPROM image load method,
OK, so with B2xx, if they already have a loaded FPGA image, they won't 
try to re-load from your host during start-up, unless you
   power-cycle them first.  So, this can result in you having upgraded 
the host side of things, complete with host-resident images,
   and getting a "mis-match" error with B2xx.  The UHD code does NOT 
attempt to re-load the FPGA image if the host side is
   newer than the code resident on the B2xx--only after a power-cycle.
> It was interesting to see the extra console UHD diagnostics, 
> particularly about clock sources and the 1 PPS input.
> I have a Rubidium 10 MHz source and 1PPS generator source that will 
> eventually be incorporated for USRP synchronisation.
> However, I am now in the process of setting up the toolchain and new 
> gr_modtool and transitioning the 3.7x OOT blocks
> The GNU Radio 3.8 OOT Module Porting Guide looks helpful at 16 May 2020.
> The only real issue I had before was to include FindVOLKGNSSSDRcmake 
> and the corresponding library.
> Regards,
> David.
> *From:* Marcus D. Leech via USRP-users
> *Sent:* Tuesday, June 23, 2020 1:47 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] GRC up-grade - installation issues
> On 06/22/2020 02:45 PM, David Taylor (manx.net) via USRP-users wrote:
>>
>> Dear all,
>>
>> I have been successfully running a B200/ B210 research project for 
>> two years based on Ubuntu 18.04 LTS and version 3.7x GRC.
>>
>> This includes a number of OOT blocks developed for direct sequence 
>> spread spectrum, using the Volk GNSSSDR library extensions. An N210 
>> USRP is also at my disposal.
>>
>> I now have a clean upgrade to Ubuntu 20.04 LTS and wish to refresh 
>> the GRC & UHD drivers to the latest stable release, taking best 
>> advice please to ensure project conclusion.
>>
>> The issues:-
>>
>> 1). GRC version 3.8.1.0~rc12build2 works standalone and appears to 
>> have similar Cmake files structure and content. (3.9.0.0 is listed in 
>> the package manager as available, but with significant and noticeable 
>> changes in the software migration and dependencies)?
>>
>> 2). Libuhd-dev at 3.15.0.0-2build5 correctly identifies the B210 over 
>> USB3. (I note that library-file libuhd003 no longer forms part of 
>> this package).
>>
>> 3). Running “uhd_images_downloader.py” fully populates 
>> /usr/share/images/.
>>
>> There is an issue with FPGA compatibility, which I have seen before 
>> in 3.7x GRC.  “Expected FPGA compatibility number 16 expected got 14.”
>>
>> This issue was solved under V3.7x  simply by replacement of the FPGA 
>> image from archive.
>>
> Is this compatibility issue with your N210 or B2xx?  It isn't clear.
>
>> 4). I have removed all FPGA images from the /usr/share/images 
>> directory and have selectively tried installing a number of earlier 
>> discrete images and boot-loader from the archive, but all without 
>> success.
>>
>> 5). A re-run of the uhd-images-downloader now fails to re-populate 
>> the images folder, however the python(3) script itself runs.
>>
> You might want to simply remove *everything* from 
> /usr/share/uhd/images, and re-run:
>
> sudo uhd_images_downloader.py
>
> [Making certain it's running the version you think it's running--if 
> you installed from pre-packaged, it'll be in /usr/bin]
>
> If this doesn't work, please share the error messages produced with us.
>
>
> Also, because I didn't see anything in your work-log about it, for 
> N210, you have to run:
>
> uhd_image_loader --args addr=<addr-of-n210>,type=n200
>
> This loads the appropriate image into the EEPROM of the N210.  The 
> N2xxx series, unlike the B2xx series don't do this dynamically at
>   runtime.  Once you load an image into them, that image is there 
> until it is reprogrammed, even across power-off.  This is different than
>   B2xx, which manages this automatically after power-up.
>
>
>> Many thanks in advance and I look forward to being able to contribute 
>> to the group.
>>
>> Best regards,
>>
>> David Taylor
>>
>> Ph.D Researcher, Limerick University, Ireland. GD4FMB
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> ------------------------------------------------------------------------
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------090706080608040401020700
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/23/2020 03:23 PM, David Taylor
      (manx.net) via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1"
      type="cite">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      <div dir="ltr">
        <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR:
          #000000">
          <div>Marcus.</div>
          <div> </div>
          <div>Many thanks for your prompt reply.</div>
          <div>Complete removal of everything from
            /usr/share/uhd/images, then running the images-downloader
            from /usr/bin works fine.</div>
          <div> </div>
          <div>I have only managed to try this with a B210 as the other
            transceivers remain in the laboratory under Covid19
            university building closure measures.</div>
          <div>The N210 is yet to be used, but thanks for the advising
            on the particular EEPROM image load method, </div>
        </div>
      </div>
    </blockquote>
    OK, so with B2xx, if they already have a loaded FPGA image, they
    won't try to re-load from your host during start-up, unless you<br>
      power-cycle them first.  So, this can result in you having
    upgraded the host side of things, complete with host-resident
    images,<br>
      and getting a "mis-match" error with B2xx.  The UHD code does NOT
    attempt to re-load the FPGA image if the host side is<br>
      newer than the code resident on the B2xx--only after a
    power-cycle.<br>
    <blockquote cite="mid:07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1"
      type="cite">
      <div dir="ltr">
        <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR:
          #000000">
          <div> </div>
          <div>It was interesting to see the extra console UHD
            diagnostics, particularly about clock sources and the 1 PPS
            input.</div>
          <div>I have a Rubidium 10 MHz source and 1PPS generator source
            that will eventually be incorporated for USRP
            synchronisation.</div>
          <div> </div>
          <div>However, I am now in the process of setting up the
            toolchain and new gr_modtool and transitioning the 3.7x OOT
            blocks</div>
          <div>The GNU Radio 3.8 OOT Module Porting Guide looks helpful
            at 16 May 2020.</div>
          <div>The only real issue I had before was to include
            FindVOLKGNSSSDRcmake and the corresponding library.</div>
          <div> </div>
          <div>Regards,</div>
          <div>David.</div>
          <div> </div>
          <div> </div>
          <div> </div>
          <div style="FONT-SIZE: small; TEXT-DECORATION: none;
            FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
            COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">
            <div style="FONT: 10pt tahoma">
              <div> </div>
              <div style="BACKGROUND: #f5f5f5">
                <div style="font-color: black"><b>From:</b> <a
                    moz-do-not-send="true"
                    title="usrp-users@lists.ettus.com">Marcus D. Leech
                    via USRP-users</a> </div>
                <div><b>Sent:</b> Tuesday, June 23, 2020 1:47 AM</div>
                <div><b>To:</b> <a moz-do-not-send="true"
                    title="usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
                </div>
                <div><b>Subject:</b> Re: [USRP-users] GRC up-grade -
                  installation issues</div>
              </div>
            </div>
            <div> </div>
          </div>
          <div style="FONT-SIZE: small; TEXT-DECORATION: none;
            FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
            COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">
            <div class="moz-cite-prefix">On 06/22/2020 02:45 PM, David
              Taylor (manx.net) via USRP-users wrote:<br>
            </div>
            <blockquote cite="mid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1"
              type="cite">
              <div dir="ltr">
                <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri';
                  COLOR: #000000">
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">Dear
                      all,</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">I
                      have been successfully running a B200/ B210
                      research project for two years based on Ubuntu
                      18.04 LTS and version 3.7x GRC.</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">This
                      includes a number of OOT blocks developed for
                      direct sequence spread spectrum, using the Volk
                      GNSSSDR library extensions. An N210 USRP is also
                      at my disposal.</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">I
                      now have a clean upgrade to Ubuntu 20.04 LTS and
                      wish to refresh the GRC &amp; UHD drivers to the
                      latest stable release, taking best advice please
                      to ensure project conclusion.</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt">The issues:-</p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">1).
                      GRC version <font color="#0000ff" size="3">3.8.1.0~rc12build2</font>
                      works standalone and appears to have similar Cmake
                      files structure and content. (<font
                        color="#0000ff" size="3">3.9.0.0</font> is
                      listed in the package manager as available, but
                      with significant and noticeable changes in the
                      software migration and dependencies)? </font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">2).
                      Libuhd-dev at <font color="#0000ff" size="3">3.15.0.0-2build5</font>
                      correctly identifies the B210 over USB3. (I note
                      that library-file libuhd003 no longer forms part
                      of this package).</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">3).
                      Running “uhd_images_downloader.py” fully populates
                      /usr/share/images/.</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">There
                      is an issue with FPGA compatibility, which I have
                      seen before in 3.7x GRC.<span style="mso-spacerun:
                        yes">  “</span>Expected FPGA compatibility
                      number 16 expected got 14.”</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">This
                      issue was solved under V3.7x  simply by
                      replacement of the FPGA image from archive. </font></p>
                </div>
              </div>
            </blockquote>
            Is this compatibility issue with your N210 or B2xx?  It
            isn't clear.<br>
            <br>
            <blockquote cite="mid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1"
              type="cite">
              <div dir="ltr">
                <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri';
                  COLOR: #000000">
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">4).
                      I have removed all FPGA images from the
                      /usr/share/images directory and have selectively
                      tried installing a number of earlier discrete
                      images and boot-loader from the archive, but all
                      without success.</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">5).
                      A re-run of the uhd-images-downloader now fails to
                      re-populate the images folder, however the
                      python(3) script itself runs.</font></p>
                </div>
              </div>
            </blockquote>
            You might want to simply remove *everything* from
            /usr/share/uhd/images, and re-run:<br>
            <br>
            sudo uhd_images_downloader.py<br>
            <br>
            [Making certain it's running the version you think it's
            running--if you installed from pre-packaged, it'll be in
            /usr/bin]<br>
            <br>
            If this doesn't work, please share the error messages
            produced with us.<br>
            <br>
            <br>
            Also, because I didn't see anything in your work-log about
            it, for N210, you have to run:<br>
            <br>
            uhd_image_loader --args addr=&lt;addr-of-n210&gt;,type=n200<br>
            <br>
            This loads the appropriate image into the EEPROM of the
            N210.  The N2xxx series, unlike the B2xx series don't do
            this dynamically at<br>
              runtime.  Once you load an image into them, that image is
            there until it is reprogrammed, even across power-off.  This
            is different than<br>
              B2xx, which manages this automatically after power-up.<br>
            <br>
            <br>
            <blockquote cite="mid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1"
              type="cite">
              <div dir="ltr">
                <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri';
                  COLOR: #000000">
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"> </p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">Many
                      thanks in advance and I look forward to being able
                      to contribute to the group.</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt">Best regards,</p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">David
                      Taylor</font></p>
                  <p class="MsoNormal" style="MARGIN: 0cm 0cm 10pt;
                    LINE-HEIGHT: 13pt"><font style="FONT-SIZE: 11pt">Ph.D
                      Researcher, Limerick University, Ireland. GD4FMB</font></p>
                </div>
              </div>
              <br>
              <fieldset class="mimeAttachmentHeader"></fieldset>
              <br>
              <pre wrap="">_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="moz-txt-link-abbreviated">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
            </blockquote>
            <br>
            <p>
            </p>
            <hr>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------090706080608040401020700--


--===============5066341009760381917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5066341009760381917==--

