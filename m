Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA57729508D
	for <lists+usrp-users@lfdr.de>; Wed, 21 Oct 2020 18:16:22 +0200 (CEST)
Received: from [::1] (port=46308 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kVGmj-0006G7-TS; Wed, 21 Oct 2020 12:16:21 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:36625)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dasypuss@gmail.com>) id 1kVGmg-000693-5v
 for USRP-users@lists.ettus.com; Wed, 21 Oct 2020 12:16:18 -0400
Received: by mail-wr1-f65.google.com with SMTP id x7so3810793wrl.3
 for <USRP-users@lists.ettus.com>; Wed, 21 Oct 2020 09:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=jz+yeYGAn+1GnLF/bxs5LLp+Vd7XK9FC6nUHbis1xPM=;
 b=MRl6hjXS0oYIWsV2QKgneobYOO74fWG/7C6NscCI/0EAZDWX9N+17XguV4o/TC5yjw
 KkStDFMfWfjNcTRpnc/ilTXpQv7hi5np+MGx8BKi4FTmiyc/6n2M2JTnWe2TTgwhBcXe
 v56RgJxACVZODrxhYZBr3WAtlBwKCTKMHWWpl8nhWHR2+V8TxD+XlP97ByLDrIB7yzBh
 Xtm2rhW2vQRPbJ/IIocqe+0WALlBMER00MyO/i8/IL0G0/hiSxht0rNYRDq3SGXJeLOy
 YDV0ypkgIquM0/Fiy/SPVJxUQkaVsw39mhDB4T0iZr+SecUzKCTMFSnPexX1IEeuXleW
 e0sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=jz+yeYGAn+1GnLF/bxs5LLp+Vd7XK9FC6nUHbis1xPM=;
 b=Tn+jYsiLl5aoCXbClat+qOLiC0J7sZICL9xroeue12SR1447p4fkQOilA3lFjra/CX
 0dR8eB6tKv2Ob8B2vi34FKojLyQXzGZp+QilYKjiJ0EkP/Zyjt7r8F5zTIx1dWHU1XxT
 HZMYvf9vHL2mBWFyOoc0gD8Mn8TgjRhMfbbD3Pitabge6VS+Ic40E9Rez4997J/QVV7Q
 dd9PJL2R1aniLSozOak0P07IOwSV+jnldlWNIt/lbbHhNs5LrLkAMoMqvshGAg7kfF3D
 4tR5FCAEnIBLDBfLlGPcXZqaat+c6ElcpUXQdZngmpscnq6/iPuFermj6upBUrvoZ8dq
 +5xQ==
X-Gm-Message-State: AOAM530xgI5O09R8eplCJP+XifgS0bfoMxpDnIn5gHrEuvy7WULoIH+h
 KNx7+6P7Yw5DM1NOOYOCkurpH4XRRf0=
X-Google-Smtp-Source: ABdhPJx4uOXEPKKwgiIQ8DBzd56++ERFlXcznyt/3Ou7pd3l3RnFmui7OpTy1TXJfYJZRpPAsqnJOg==
X-Received: by 2002:a5d:4451:: with SMTP id x17mr5566874wrr.176.1603296936749; 
 Wed, 21 Oct 2020 09:15:36 -0700 (PDT)
Received: from ?IPv6:2a00:23c6:7095:7e01:6170:cbd3:9307:df05?
 ([2a00:23c6:7095:7e01:6170:cbd3:9307:df05])
 by smtp.gmail.com with ESMTPSA id o4sm4657858wrv.8.2020.10.21.09.15.35
 for <USRP-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Oct 2020 09:15:36 -0700 (PDT)
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <SA0PR19MB43827AFF6817FF8079637D64C61F0@SA0PR19MB4382.namprd19.prod.outlook.com>
 <867D4386-BAFF-4FEC-9C46-206D3987FB62@gmail.com>
 <SA0PR19MB438205C5E6E5B458E39C1642C61F0@SA0PR19MB4382.namprd19.prod.outlook.com>
 <5F8F4288.8040807@gmail.com>
Message-ID: <4b7ba0fe-09bd-cd3b-266c-ffd521606a3d@gmail.com>
Date: Wed, 21 Oct 2020 17:15:36 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <5F8F4288.8040807@gmail.com>
Content-Language: en-GB
Subject: Re: [USRP-users] Underruns causing USRP to stop transmitting and
 receiving
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
From: David Evans via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Evans <dasypuss@gmail.com>
Content-Type: multipart/mixed; boundary="===============5897463579980167606=="
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
--===============5897463579980167606==
Content-Type: multipart/alternative;
 boundary="------------3DF29E7E32AD621E8CBFC471"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------3DF29E7E32AD621E8CBFC471
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I had a similar issue to this with 4.0.0 a couple of months ago, posted 
on this group and told I would have to wait for the next release where 
it would hopefully be fixed.
So maybe it's still there, I had to revert to 3.9.7.
The issue was with high rates (20M+ on my hardware) causing 
rx_samples_to_file to hang, as well as uhd_fft,  so it was not a 
GnuRadio issue.
HTH,
Dave

On 20/10/2020 21:03, Marcus D. Leech via USRP-users wrote:
> On 10/20/2020 03:53 PM, Jerrid Plymale wrote:
>>
>> Marcus,
>>
>> The problem seems to be related to running the system with the USRP 
>> though. Someone who is working on this project with me is able to run 
>> the same embedded python block, without  the USRP hardware, and gets 
>> no Underruns when doing so. We have also been unsuccessful in finding 
>> any useful information regarding potential causes and solutions from 
>> GNU Radio and USRP documentation.
>>
>> Best Regards,
>>
>> Jerrid
>>
> Well, an underrun is conceptually simple.   It means "you aren't 
> supplying me with samples at the desired rate, so when I went to grab some
>   samples, there weren't any there".  That means your flow isn't 
> supplying them at the desired rate, either due to computational 
> starvation,
>   or a mis-understanding/mis-configuration of things like re-samplers.
>
> Some SDRs out there DO NOT REPORT overruns/underruns, so things can 
> "seem" great and not be.
>
> Further the computational envelope and requires of the UHD driver may 
> be different-enough from other hardware that is operating at
>   similar rates that you end up with underruns.  When you're running 
> at the edge of what can be accomplished with the compute
>   hardware at hand, small differences are what makes the difference.
>
> What sample-rates are we talking about?  Are you configuring your 
> hardware for a sample-rate it can actually support, for example?
>
> Much of this discussion really does belong in the discuss-gnuradio 
> arena, because it comes down to Gnu Radio performance tuning.
>
> Also, you mention an embedded processing block--presumably embedded 
> Python?  Such blocks CANNOT be run at high sample
>   rates--even if you use numpy to do all your math, the marhsalling 
> and interpreter costs will kill performance compared to a
>   similar block written in C++.
>
>
>> *From:* Marcus D Leech <patchvonbraun@gmail.com>
>> *Sent:* Tuesday, October 20, 2020 12:35 PM
>> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
>> *Cc:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] Underruns causing USRP to stop 
>> transmitting and receiving
>>
>> Probably better served by the discuss-gnuradio list and the 
>> chat.gnuradio.org online chat community.
>>
>> Sent from my iPhone
>>
>>
>>
>>     On Oct 20, 2020, at 3:30 PM, Jerrid Plymale via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>     ﻿
>>
>>     Hello All,
>>
>>     So I am working on writing an embedded python block in GNU Radio
>>     Companion to preform some analysis of RF signals that is received
>>     by a USRP x310 and transmitted back out of the USRP after
>>     analysis has been done. I have been running into some underruns
>>     lately that I have not been able to find a solution for. If I
>>     execute some of my analysis functions in the work function of the
>>     block, the application underruns and it causes the USRP to stop
>>     transmitting or receiving. However, if I execute the functions in
>>     separate polling functions that are being used to display values
>>     in the GUI, I do not get underruns. I think this might has to do
>>     with how often the analysis function is being executed, as the
>>     poll functions are only called at a rate of 10 Hz which is
>>     controlled by a function probe. Can anyone give me suggestions on
>>     what to try to fix the underrun problem, and any resources you
>>     can point me to that might help would be appreciated.
>>
>>     Best Regards,
>>
>>     Jerrid
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>     <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------3DF29E7E32AD621E8CBFC471
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    I had a similar issue to this with 4.0.0 a couple of months ago,
    posted on this group and told I would have to wait for the next
    release where it would hopefully be fixed.<br>
    So maybe it's still there, I had to revert to 3.9.7.  <br>
    The issue was with high rates (20M+ on my hardware) causing
    rx_samples_to_file to hang, as well as uhd_fft,  so it was not a
    GnuRadio issue.<br>
    HTH,<br>
    Dave<br>
    <br>
    <div class="moz-cite-prefix">On 20/10/2020 21:03, Marcus D. Leech
      via USRP-users wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:5F8F4288.8040807@gmail.com">
      <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
      <div class="moz-cite-prefix">On 10/20/2020 03:53 PM, Jerrid
        Plymale wrote:<br>
      </div>
      <blockquote
cite="mid:SA0PR19MB438205C5E6E5B458E39C1642C61F0@SA0PR19MB4382.namprd19.prod.outlook.com"
        type="cite">
        <meta http-equiv="Content-Type" content="text/html;
          charset=UTF-8">
        <meta name="Generator" content="Microsoft Word 15 (filtered
          medium)">
        <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
        <div class="WordSection1">
          <p class="MsoNormal">Marcus,<o:p></o:p></p>
          <p class="MsoNormal"><o:p> </o:p></p>
          <p class="MsoNormal">The problem seems to be related to
            running the system with the USRP though. Someone who is
            working on this project with me is able to run the same
            embedded python block, without  the USRP hardware, and gets
            no Underruns when doing so. We have also been unsuccessful
            in finding any useful information regarding potential causes
            and solutions from GNU Radio and USRP documentation.<o:p></o:p></p>
          <p class="MsoNormal"><o:p> </o:p></p>
          <p class="MsoNormal">Best Regards,<o:p></o:p></p>
          <p class="MsoNormal"><o:p> </o:p></p>
          <p class="MsoNormal">Jerrid </p>
        </div>
      </blockquote>
      Well, an underrun is conceptually simple.   It means "you aren't
      supplying me with samples at the desired rate, so when I went to
      grab some<br>
        samples, there weren't any there".  That means your flow isn't
      supplying them at the desired rate, either due to computational
      starvation,<br>
        or a mis-understanding/mis-configuration of things like
      re-samplers.<br>
      <br>
      Some SDRs out there DO NOT REPORT overruns/underruns, so things
      can "seem" great and not be.<br>
      <br>
      Further the computational envelope and requires of the UHD driver
      may be different-enough from other hardware that is operating at<br>
        similar rates that you end up with underruns.  When you're
      running at the edge of what can be accomplished with the compute<br>
        hardware at hand, small differences are what makes the
      difference.<br>
      <br>
      What sample-rates are we talking about?  Are you configuring your
      hardware for a sample-rate it can actually support, for example?<br>
      <br>
      Much of this discussion really does belong in the discuss-gnuradio
      arena, because it comes down to Gnu Radio performance tuning.<br>
      <br>
      Also, you mention an embedded processing block--presumably
      embedded Python?  Such blocks CANNOT be run at high sample<br>
        rates--even if you use numpy to do all your math, the
      marhsalling and interpreter costs will kill performance compared
      to a<br>
        similar block written in C++.<br>
      <br>
      <br>
      <blockquote
cite="mid:SA0PR19MB438205C5E6E5B458E39C1642C61F0@SA0PR19MB4382.namprd19.prod.outlook.com"
        type="cite">
        <div class="WordSection1">
          <p class="MsoNormal"><o:p></o:p></p>
          <p class="MsoNormal"><o:p> </o:p></p>
          <div>
            <div style="border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class="MsoNormal"><b>From:</b> Marcus D Leech <a
                  class="moz-txt-link-rfc2396E"
                  href="mailto:patchvonbraun@gmail.com"
                  moz-do-not-send="true">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Tuesday, October 20, 2020 12:35 PM<br>
                <b>To:</b> Jerrid Plymale <a
                  class="moz-txt-link-rfc2396E"
                  href="mailto:jerrid.plymale@canyon-us.com"
                  moz-do-not-send="true">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
                <b>Cc:</b> <a class="moz-txt-link-abbreviated"
                  href="mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send="true">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Underruns causing USRP
                to stop transmitting and receiving<o:p></o:p></p>
            </div>
          </div>
          <p class="MsoNormal"><o:p> </o:p></p>
          <p class="MsoNormal" style="margin-bottom:12.0pt">Probably
            better served by the discuss-gnuradio list and the
            chat.gnuradio.org online chat community. <o:p></o:p></p>
          <div>
            <p class="MsoNormal">Sent from my iPhone<o:p></o:p></p>
          </div>
          <div>
            <p class="MsoNormal"><br>
              <br>
              <o:p></o:p></p>
            <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
              <p class="MsoNormal" style="margin-bottom:12.0pt">On Oct
                20, 2020, at 3:30 PM, Jerrid Plymale via USRP-users &lt;<a
                  moz-do-not-send="true"
                  href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
                wrote:<o:p></o:p></p>
            </blockquote>
          </div>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class="MsoNormal">﻿ <o:p></o:p></p>
              <p class="MsoNormal">Hello All,<o:p></o:p></p>
              <p class="MsoNormal"> <o:p></o:p></p>
              <p class="MsoNormal">So I am working on writing an
                embedded python block in GNU Radio Companion to preform
                some analysis of RF signals that is received by a USRP
                x310 and transmitted back out of the USRP after analysis
                has been done. I have been running into some underruns
                lately that I have not been able to find a solution for.
                If I execute some of my analysis functions in the work
                function of the block, the application underruns and it
                causes the USRP to stop transmitting or receiving.
                However, if I execute the functions in separate polling
                functions that are being used to display values in the
                GUI, I do not get underruns. I think this might has to
                do with how often the analysis function is being
                executed, as the poll functions are only called at a
                rate of 10 Hz which is controlled by a function probe.
                Can anyone give me suggestions on what to try to fix the
                underrun problem, and any resources you can point me to
                that might help would be appreciated. <o:p></o:p></p>
              <p class="MsoNormal"> <o:p></o:p></p>
              <p class="MsoNormal">Best Regards,<o:p></o:p></p>
              <p class="MsoNormal"> <o:p></o:p></p>
              <p class="MsoNormal">Jerrid<o:p></o:p></p>
              <p class="MsoNormal">_______________________________________________<br>
                USRP-users mailing list<br>
                <a moz-do-not-send="true"
                  href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
                <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></p>
            </div>
          </blockquote>
        </div>
      </blockquote>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------3DF29E7E32AD621E8CBFC471--


--===============5897463579980167606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5897463579980167606==--

