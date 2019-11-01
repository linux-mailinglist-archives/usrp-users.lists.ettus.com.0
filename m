Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE1AEBB5B
	for <lists+usrp-users@lfdr.de>; Fri,  1 Nov 2019 01:04:28 +0100 (CET)
Received: from [::1] (port=54922 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iQKQQ-0004Wi-Gy; Thu, 31 Oct 2019 20:04:22 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:33553)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iQKQN-0004SH-CR
 for usrp-users@lists.ettus.com; Thu, 31 Oct 2019 20:04:19 -0400
Received: by mail-qt1-f179.google.com with SMTP id y39so10958789qty.0
 for <usrp-users@lists.ettus.com>; Thu, 31 Oct 2019 17:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=8HzX9fMjSTjQXeo62AH3pRPl/fa8IxuUWdnqS8bSWM0=;
 b=cm4QUFNOqSlTfNG5jc0D5yNf6Qe9M8OV2Je4e2+J44Ny59XM1MNZvAkG/W7YSL8Hv0
 4wnBY3qWS/z0HzGgUvqt+LjwwHSmplbssO+Qqv/VEBNP81UDQQNKg2gk+6cqEM4AjhRO
 nq1shV5Z2a5hvMQQxg8FWUj9so/dwGB6Qc4NaI/wv/u6c8XEFhZqzpNheqDcPzBkGKC7
 sU6rj35/oYZUKWBSLuGgHPVBva18UvF7CGfkl0cbjAqlfLNFaPmtUn+E1Fm05a2bUzcS
 3wtGFDidZ8ymsLGEt528viICGHmT4MUipzOlraJsopxi8S3tf9OfAirWM41K0jfJVX4J
 JScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=8HzX9fMjSTjQXeo62AH3pRPl/fa8IxuUWdnqS8bSWM0=;
 b=VWak3cTsAEv34r10oe9itui/vwMyr0WM33wAUIVIvWJ1acYqYxCzhh1VpMJtDEniA0
 Nsm//Gh/cyP1eioYUB+TNtMpnCOFzAXVmurxrP1WVt7x34VbaYlhPHEyfR+Wb3jKxIYu
 xjjO3WYIzuh5Wgn4OCSjUR1xSSoYSsCTUT0d3UNM3FBSwKNPZ6QGqLEAw08mxhxObeOI
 Xe2saOajVoYmDtaBRWTpWf6DbgM2Qlv+xLGROwXmKYYCHoth9ruRL3wKBIhy6VVsl4ep
 BNbV/Y0B2EYk8bnLyZGMkfJf6hdgbVs9JQ8hMWF1gp/QipGt0yyxO89aeyVoFylwXySN
 L06A==
X-Gm-Message-State: APjAAAXmjgjcDRi/SutQ23aO5UHyBvvygQ7CUbg55SsY2uIuHIObWWyC
 JelZ+UYRFcAJ4Cnm7bvR/iX+1MdeUBI=
X-Google-Smtp-Source: APXvYqxGezUMXv6K8LBSXbyOS9oCWYMeA7oE23Wz2jCCc6LLCBPvGKP0AYhauoN5Wy5kgz0NNqLCrA==
X-Received: by 2002:ac8:7349:: with SMTP id q9mr3151887qtp.166.1572566618638; 
 Thu, 31 Oct 2019 17:03:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id q8sm3980361qta.31.2019.10.31.17.03.37
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Oct 2019 17:03:37 -0700 (PDT)
Message-ID: <5DBB7658.4090305@gmail.com>
Date: Thu, 31 Oct 2019 20:03:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <85CE420D-AD7B-4844-818B-9A300B01F267@c3commsystems.com>
In-Reply-To: <85CE420D-AD7B-4844-818B-9A300B01F267@c3commsystems.com>
Subject: Re: [USRP-users] GNURadio with E310?
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
Content-Type: multipart/mixed; boundary="===============8542298099485646125=="
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
--===============8542298099485646125==
Content-Type: multipart/alternative;
 boundary="------------000506090409000002010409"

This is a multi-part message in MIME format.
--------------000506090409000002010409
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/30/2019 10:13 PM, zcao--- via USRP-users wrote:
> Hi,
>
> I have a couple high level questions here related with using GNURadio 
> with E310. I would really appreciate it if someone can give us a quick 
> feedback. Thanks.
>
> 1. Can we use E310 just like other non-embedded USRP platforms, with 
> which we run GNURadio models in a host computer and send I/Q samples 
> to E310 via an Ethernet connection?
There's a *VERY LOW BANDWIDTH* "network mode" that allows that type of 
operation, but it was only ever intended for debugging purposes
   and is not recommended.  It really is intended to be used as an 
embedded platform.
>
> 2. Are there gr-uhd blocks that expose the control of AD9361and 
> DDC/DUC in the FPGA, in which we can configure channel bandwidth, 
> filter settings, register settings, ADC/DAC sampling rate and sampling 
> rate change by DDC/DUC?
UHD in general, and gr-uhd in particular necessarily provide a very 
generic API intended to allow (most) programs to be somewhat
   hardware agnostic.  So there are no exposed register-level API calls 
for the AD9361, but you are free to "dive down" and expose those
   things for your own application, all the time, not breaking anything 
within the UHD API.   Having said that, all of the things you want to do
   are already handled within the UHD API as generic services--most code 
never needs to "know" much about the underlying hardware, and
   this is *PARTICULARLY TRUE* of Gnu Radio code.   Personally, most of 
my GR applications will run with many different types of SDR
   hardware, including non-Ettus hardware, without changes other than 
some command-line parameters to provide device-driver
   guidance.


>
> Regards,
> Arnold
>
> *C-3 Comm Systems, LLC*
> 3100 Clarendon Blvd., Suite 200
> Arlington, VA 22201
> Phone: (703) 829-0588
> Email :zcao@c3commsystems.com <mailto:zcao@c3commsystems.com>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------000506090409000002010409
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/30/2019 10:13 PM, zcao--- via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:85CE420D-AD7B-4844-818B-9A300B01F267@c3commsystems.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      Hi,
      <div class=""><br class="">
      </div>
      <div class="">I have a couple high level questions here related
        with using GNURadio with E310. I would really appreciate it if
        someone can give us a quick feedback. Thanks.</div>
      <div class=""><br class="">
      </div>
      <div class="">1. Can we use E310 just like other non-embedded USRP
        platforms, with which we run GNURadio models in a host computer
        and send I/Q samples to E310 via an Ethernet connection?</div>
    </blockquote>
    There's a *VERY LOW BANDWIDTH* "network mode" that allows that type
    of operation, but it was only ever intended for debugging purposes<br>
      and is not recommended.  It really is intended to be used as an
    embedded platform.<br>
    <blockquote
      cite="mid:85CE420D-AD7B-4844-818B-9A300B01F267@c3commsystems.com"
      type="cite">
      <div class=""><br class="">
      </div>
      <div class="">2. Are there gr-uhd blocks that expose the control
        of AD9361and DDC/DUC in the FPGA, in which we can configure
        channel bandwidth, filter settings, register settings, ADC/DAC
        sampling rate and sampling rate change by DDC/DUC? <br>
      </div>
    </blockquote>
    UHD in general, and gr-uhd in particular necessarily provide a very
    generic API intended to allow (most) programs to be somewhat<br>
      hardware agnostic.  So there are no exposed register-level API
    calls for the AD9361, but you are free to "dive down" and expose
    those<br>
      things for your own application, all the time, not breaking
    anything within the UHD API.   Having said that, all of the things
    you want to do<br>
      are already handled within the UHD API as generic services--most
    code never needs to "know" much about the underlying hardware, and<br>
      this is *PARTICULARLY TRUE* of Gnu Radio code.   Personally, most
    of my GR applications will run with many different types of SDR<br>
      hardware, including non-Ettus hardware, without changes other than
    some command-line parameters to provide device-driver<br>
      guidance.<br>
    <br>
    <br>
    <blockquote
      cite="mid:85CE420D-AD7B-4844-818B-9A300B01F267@c3commsystems.com"
      type="cite">
      <div class=""><br class="">
      </div>
      <div class="">Regards,</div>
      <div class="">Arnold</div>
      <div class=""><br class="">
      </div>
      <div class="">
        <div style="color: rgb(0, 0, 0); letter-spacing: normal;
          text-align: start; text-indent: 0px; text-transform: none;
          white-space: normal; word-spacing: 0px;
          -webkit-text-stroke-width: 0px; word-wrap: break-word;
          -webkit-nbsp-mode: space; line-break: after-white-space;"
          class="">
          <div style="color: rgb(0, 0, 0); letter-spacing: normal;
            text-align: start; text-indent: 0px; text-transform: none;
            white-space: normal; word-spacing: 0px;
            -webkit-text-stroke-width: 0px; word-wrap: break-word;
            -webkit-nbsp-mode: space; line-break: after-white-space;"
            class="">
            <div style="color: rgb(0, 0, 0); letter-spacing: normal;
              text-align: start; text-indent: 0px; text-transform: none;
              white-space: normal; word-spacing: 0px;
              -webkit-text-stroke-width: 0px; word-wrap: break-word;
              -webkit-nbsp-mode: space; line-break: after-white-space;"
              class="">
              <div style="color: rgb(0, 0, 0); letter-spacing: normal;
                text-align: start; text-indent: 0px; text-transform:
                none; white-space: normal; word-spacing: 0px;
                -webkit-text-stroke-width: 0px; word-wrap: break-word;
                -webkit-nbsp-mode: space; line-break:
                after-white-space;" class="">
                <div class=""><b class="">C-3 Comm Systems, LLC</b></div>
                <div class="">3100 Clarendon Blvd., Suite 200</div>
                <div class="">Arlington, VA 22201</div>
                <div class="">Phone: (703) 829-0588</div>
                <div class="">Email :<span class="Apple-converted-space"> </span><a
                    moz-do-not-send="true"
                    href="mailto:zcao@c3commsystems.com" class="">zcao@c3commsystems.com</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br class="">
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

--------------000506090409000002010409--


--===============8542298099485646125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8542298099485646125==--

