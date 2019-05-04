Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C201377F
	for <lists+usrp-users@lfdr.de>; Sat,  4 May 2019 06:42:07 +0200 (CEST)
Received: from [::1] (port=59010 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMmUw-00067N-Mn; Sat, 04 May 2019 00:42:06 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:35367)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hMmUO-0005yZ-OV
 for usrp-users@lists.ettus.com; Sat, 04 May 2019 00:42:02 -0400
Received: by mail-qt1-f179.google.com with SMTP id e5so9159898qtq.2
 for <usrp-users@lists.ettus.com>; Fri, 03 May 2019 21:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=VB0jj4gAKN/vceqYWtp1YSP8dEHL+mcCxy5jODFnW6Q=;
 b=gcTTTQgd52BV7tTijK/OY+5gtKLRYrrRqJjRL2icyhoecrfiKMjppIl+Jk0TaouB3f
 L/3k3YNxJNMl5rHqlyMysD7jJE1ZQGfjcVfYLyL+qmWdG1AC4Br+XelB+Env5CxM2LF5
 WYRF+er7JUN+PMIngW4Zb59nTaZfRir3ANicvrQ0goPFjvipAHTemsKtqFRKVhVoudVX
 dATryTOTEIR5NHpTQ3P2KLM0GFsii68GS4mlJkGX7ivaEY7SFaHVLP1KNUDTW4CVipit
 DarFMwIPe99pQSkWImztzH+6plLWpmyhBscFMlIs5swRDxLHzPG/+5WXqc6cXGl9BLo4
 Ih0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=VB0jj4gAKN/vceqYWtp1YSP8dEHL+mcCxy5jODFnW6Q=;
 b=ScmDOrXPlcyHVvmswlqYrYkxkqjxCayT2vkNG0YQSOfPJCgBsWe9E7IZD989WWV6hE
 uSytEOQtcy8uvBUz0+uq9zUqFJaidNO2+uYsntfkWnqKLfhD3Vl19ZLUwI3lqtlfm+qi
 kaA3vQtCPOuZzHbgJTLeZN/ERyyzGcqWPmlvBXRZXwYxXnDEf7S3JfedBwuIN5jxVFLR
 0tAz/scDTuXX7hXScHDpzII5e+u5F2PU4OiTnK7+n/RYu3ZqrLyzamBasSWtYOZoi6pF
 Cg6PkMDItbpvgPIZKXUoWZG/y++XMb+wlflnPQq65hq93gzI6xavgqZ3z4qXHSHXTD14
 hGOA==
X-Gm-Message-State: APjAAAV3nOQAW/37pn4QmV+/CBOdFbgHiLOyrG1vZaUOmEKtNDydHuDo
 8E8KC4pYjwH8dDlzKwhskKg8DKDAQfk=
X-Google-Smtp-Source: APXvYqwleGEpGP1VKisEPIkP8laMNEXWokMyAhjfMTmSlrTXuPMsuARNwfjgar81g8U6QUCTdbeETA==
X-Received: by 2002:aed:3802:: with SMTP id j2mr12133952qte.201.1556944852074; 
 Fri, 03 May 2019 21:40:52 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id a12sm2928540qta.85.2019.05.03.21.40.51
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 21:40:51 -0700 (PDT)
Message-ID: <5CCD17D2.8050809@gmail.com>
Date: Sat, 04 May 2019 00:40:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>
 <1432742277.62002.1556943355674@mail.yahoo.com>
In-Reply-To: <1432742277.62002.1556943355674@mail.yahoo.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B200 Overrun
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
Content-Type: multipart/mixed; boundary="===============0988412824509065472=="
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
--===============0988412824509065472==
Content-Type: multipart/alternative;
 boundary="------------040301000007030502010402"

This is a multi-part message in MIME format.
--------------040301000007030502010402
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/04/2019 12:15 AM, Rensi Mathew via USRP-users wrote:
> Dear sir
> I am using B200 SDR to run the program usrp_spectrum_sense.py with a 
> sampling frequency of 16e6.
> I think I am using a fairly low sampling rate.
> Still I am getting some 'OOOO'.
>
> Could someone tell me the possible reasons for the same? And how I can 
> avoid the same?
Overruns mean that your computer isn't keeping up with the sample flow 
from the radio.  Sometimes, you can increase the buffering
   in the USB driver to reduce the occurrence of this:

https://files.ettus.com/manual/page_transport.html#transport_usb_params

In particular, "num_recv_frames" can help--I'd suggest 128 or 256.

What type of computer are you using?  Are you setting your CPU governor 
to "performance" mode?

Whether any given sample-rate is "fairly low" depends VERY much on what 
your computer is *doing* with those samples--the more complex
   the operations that are happening at the input sample rate, the 
harder your computer is working.


>
> Thanking you
> Rensi Sam
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------040301000007030502010402
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/04/2019 12:15 AM, Rensi Mathew
      via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:1432742277.62002.1556943355674@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div>
          <div>
            <div>Dear sir</div>
            <div>I am using B200 SDR to run the program
              usrp_spectrum_sense.py with a sampling frequency of 16e6.</div>
            <div>I think I am using a fairly low sampling rate.<br>
            </div>
            <div>Still I am getting some 'OOOO'.</div>
            <div><br>
            </div>
            <div>Could someone tell me the possible reasons for the
              same? And how I can avoid the same?</div>
          </div>
        </div>
      </div>
    </blockquote>
    Overruns mean that your computer isn't keeping up with the sample
    flow from the radio.  Sometimes, you can increase the buffering<br>
      in the USB driver to reduce the occurrence of this:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_transport.html#transport_usb_params">https://files.ettus.com/manual/page_transport.html#transport_usb_params</a><br>
    <br>
    In particular, "num_recv_frames" can help--I'd suggest 128 or 256.<br>
    <br>
    What type of computer are you using?  Are you setting your CPU
    governor to "performance" mode?<br>
    <br>
    Whether any given sample-rate is "fairly low" depends VERY much on
    what your computer is *doing* with those samples--the more complex<br>
      the operations that are happening at the input sample rate, the
    harder your computer is working.<br>
    <br>
    <br>
    <blockquote cite="mid:1432742277.62002.1556943355674@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div>
          <div>
            <div><br>
            </div>
            <div>Thanking you</div>
            <div>Rensi Sam<br>
            </div>
          </div>
          <br>
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

--------------040301000007030502010402--


--===============0988412824509065472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0988412824509065472==--

