Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B56111EAF
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2019 00:03:57 +0100 (CET)
Received: from [::1] (port=55404 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icHCw-0001f2-UI; Tue, 03 Dec 2019 18:03:50 -0500
Received: from mail-qk1-f171.google.com ([209.85.222.171]:34438)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1icHCt-0001Zo-OX
 for usrp-users@lists.ettus.com; Tue, 03 Dec 2019 18:03:47 -0500
Received: by mail-qk1-f171.google.com with SMTP id d202so5316491qkb.1
 for <usrp-users@lists.ettus.com>; Tue, 03 Dec 2019 15:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=TBiGhKocCErAIuoEGxsuqHnM1A5WlcR7eJMb+GrjcwI=;
 b=FjElcH70Sw2We+Hu4plourrJ91UhhlEV3L0Erl0MLc11F74HUHyNo8uz9uwHD5wVog
 s20Mq8ij1/iKul+ZP3mubZKY0RPfoRxSjgMzdWNQ0M28K5vEEiMl3ud7CSzhGkg3sqxb
 ihRfNFZ6d7T+a4jWpR4w6saDy8dT04KVRD+Q5yEfhQxv3BZM7QD6oYLnpcfNZ+CpOJt6
 MM69bxB/951/EvncNlpHyfjMTkDn0EetVoSa1j0Jg9z1mj6fKuNCWHNHX8R5DlfhWGwU
 z4pWyZiLKdyheGG/OT4zXBNtlRPuQ85ipq0nPk6a9SH+/nrZXwXoRk8+5OwKqL0tR2nJ
 mHsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=TBiGhKocCErAIuoEGxsuqHnM1A5WlcR7eJMb+GrjcwI=;
 b=LR1JfBXgtMIaMD9C9RGvPpDGCFu3Zg303F2151+4Qt9GWIn5MT37G4+k+5+5jhOptT
 vT1Y30Z7xmL/Aovbvo/dKZs2rInNfpkEPCVf+kDX80E5AOHAqRlVzRfJcP7GNDXBgFz6
 8JcKirFLFAoUpP88wS3WkKeG3WK5Q3sZeKQ+a8sgJwQeb4em9cvWD4KRSSWCdn0DKFLU
 OPLfa01LTT6oTOIXyxUqQNGCjXV+NfOiNIL50NxTqFd0zbeI/stnNEmQpXDc3VTDFzVj
 qivK6rGTrgPe5m7e+yqjTKzlynJeeI4OT89HZLJIcwhId6jqQruf+nujQK9tvxRwmZfU
 1neg==
X-Gm-Message-State: APjAAAW0mPhCv+1L5vrs1fI2/B54ugwhkuBozShNy4kvrS3pOCQM8bEX
 x0gifxrFirSvhXci92/Vhb/RGw7S
X-Google-Smtp-Source: APXvYqzwHsjqyy6BgAhorCZXvQttJh5WnBScoRhW1YFeDkIejcR3xrRqlPl4mbEvOLDQdzoFiGQ2TA==
X-Received: by 2002:a37:9245:: with SMTP id u66mr8145668qkd.102.1575414186910; 
 Tue, 03 Dec 2019 15:03:06 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id 3sm2618600qth.2.2019.12.03.15.03.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Dec 2019 15:03:03 -0800 (PST)
Message-ID: <5DE6E9A6.3050506@gmail.com>
Date: Tue, 03 Dec 2019 18:03:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <D7790F43D25BB04383227944C1AC1891010C0FCB4E@MXSRV2.fe.hhi.de>
 <CAEXYVK5bF4PXkRcAbY5NAJu80xZxR0uak2S89vYRO1SaE28ECA@mail.gmail.com>
 <BN6PR19MB16353307DC5C994FC836EB37A4420@BN6PR19MB1635.namprd19.prod.outlook.com>
 <CAEXYVK5PS_hscpMwWogAj24PQu4oa-kxGNOi28JVhFh6yn_96Q@mail.gmail.com>
In-Reply-To: <CAEXYVK5PS_hscpMwWogAj24PQu4oa-kxGNOi28JVhFh6yn_96Q@mail.gmail.com>
Subject: Re: [USRP-users] IQ-sample with a magnitude larger than 1.0
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7189977274204272430=="
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
--===============7189977274204272430==
Content-Type: multipart/alternative;
 boundary="------------050902060507090207060601"

This is a multi-part message in MIME format.
--------------050902060507090207060601
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/03/2019 04:37 PM, Brian Padalino via USRP-users wrote:
> On Tue, Dec 3, 2019 at 1:53 PM Jeff S <e070832@hotmail.com 
> <mailto:e070832@hotmail.com>> wrote:
>
>     I'm fairly new to GNURadio, so I may have (most likely) missed it,
>     but I had the same problem that was fixed by multiplying the
>     complex number going into my sink by 0.25 to get my QPSK
>     modulation to work on my X310. Since doing that, I have found
>     references to over driving the TX on this list.  Is the [1, -1]
>     limit an Ettus device limit, or is it a GNURadio limit?  And where
>     is that documented (so I can maybe find what else I'm missing)?
>
>
> Ettus radios.  Normalized complex values:
>
> https://files.ettus.com/manual/page_stream.html#stream_datatypes_cpu
>
> If the values aren't normalized, it seems difficult to try to figure 
> out what "full scale" means.  Right?
>
>
>     Also, it seems like the consensus is that going [1,-1] is still
>     too much, and going less than 0.707 may be better.
>
>
> 3dB sounds like a lot to drop, but 0.1dB or even 0.5dB is probably 
> just fine.  This is just the level coming out of the DAC.  Further 
> amplification down the line might cause other non-linearity issues, 
> but overall you probably want to exercise as much dynamic range as 
> possible.
>
> Brian
>
>
Indeed the {-1.0,+1.0} normalization is short-hand for "somewhere around 
the largest value the DAC/ADC can support".  But there are provisos.

The "wire format" is very typically 16-bit complex integers, which the 
FPGA DSP logic will (considering the TX path):

     o interpolate up to the sample-rate of the DAC
     o scale to the resolution of the DAC

There may be slight accumulated errors there, so "staying away from the 
edge" is a good practice.

But *further*, when the signal leaves the DAC, it meets a lot of analog 
hardware--notably a mixer, and some RF amplifiers and filters.  There's
   no way to guarantee (without much extra expense in hardware and 
fine-scale calibrated software adjustments) that full-scale coming out 
of the
   DAC will *not* result in non-linearities in the analog 
chain--particularly given the very-wide tuning range and signal bandwidth
   of most of this hardware.





--------------050902060507090207060601
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/03/2019 04:37 PM, Brian Padalino
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAEXYVK5PS_hscpMwWogAj24PQu4oa-kxGNOi28JVhFh6yn_96Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">On Tue, Dec 3, 2019 at 1:53 PM Jeff S &lt;<a
            moz-do-not-send="true" href="mailto:e070832@hotmail.com">e070832@hotmail.com</a>&gt;
          wrote:<br>
        </div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">
              <div
style="font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I'm
                fairly new to GNURadio, so I may have (most likely)
                missed it, but I had the same problem that was fixed by
                multiplying the complex number going into my sink by
                0.25 to get my QPSK modulation to work on my X310. 
                Since doing that, I have found references to over
                driving the TX on this list.  Is the [1, -1] limit an
                Ettus device limit, or is it a GNURadio limit?  And
                where is that documented (so I can maybe find what else
                I'm missing)?</div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>Ettus radios.  Normalized complex values:</div>
          <div><br>
          </div>
          <div>  <a moz-do-not-send="true"
href="https://files.ettus.com/manual/page_stream.html#stream_datatypes_cpu">https://files.ettus.com/manual/page_stream.html#stream_datatypes_cpu</a></div>
          <div><br>
          </div>
          <div>If the values aren't normalized, it seems difficult to
            try to figure out what "full scale" means.  Right?</div>
          <div> </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">
              <div
style="font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
              </div>
              <div
style="font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Also,
                it seems like the consensus is that going [1,-1] is
                still too much, and going less than 0.707 may be better.</div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>3dB sounds like a lot to drop, but 0.1dB or even 0.5dB is
            probably just fine.  This is just the level coming out of
            the DAC.  Further amplification down the line might cause
            other non-linearity issues, but overall you probably want to
            exercise as much dynamic range as possible.</div>
          <div><br>
          </div>
          <div>Brian</div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">
              <div id="gmail-m_6265047434519115788Signature">
                <div>
                  <div>
                    <div dir="ltr">
                      <div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
    </blockquote>
    Indeed the {-1.0,+1.0} normalization is short-hand for "somewhere
    around the largest value the DAC/ADC can support".  But there are
    provisos.<br>
    <br>
    The "wire format" is very typically 16-bit complex integers, which
    the FPGA DSP logic will (considering the TX path):<br>
    <br>
        o interpolate up to the sample-rate of the DAC<br>
        o scale to the resolution of the DAC<br>
    <br>
    There may be slight accumulated errors there, so "staying away from
    the edge" is a good practice.<br>
    <br>
    But *further*, when the signal leaves the DAC, it meets a lot of
    analog hardware--notably a mixer, and some RF amplifiers and
    filters.  There's<br>
      no way to guarantee (without much extra expense in hardware and
    fine-scale calibrated software adjustments) that full-scale coming
    out of the<br>
      DAC will *not* result in non-linearities in the analog
    chain--particularly given the very-wide tuning range and signal
    bandwidth<br>
      of most of this hardware.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050902060507090207060601--


--===============7189977274204272430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7189977274204272430==--

