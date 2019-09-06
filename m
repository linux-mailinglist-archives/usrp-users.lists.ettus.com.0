Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACD9AC2D0
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 01:10:35 +0200 (CEST)
Received: from [::1] (port=36432 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6NN9-0005ed-W0; Fri, 06 Sep 2019 19:10:31 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:38859)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i6NN6-0005Yw-RU
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 19:10:28 -0400
Received: by mail-qt1-f171.google.com with SMTP id b2so9133121qtq.5
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 16:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=oqj9O6FXAxGlS96ZsZVHaoinnYv4TIUSkqiULLQiocI=;
 b=bJxppJ9YDIqJ5o1eR/2DE/vV5vX9N78keNoyLBui6x7Eb38k579g+rkYcAP7YF/BbE
 G5JAjLeqfN0vezmRkJryUYYDSueEotUKdU5mKhf07f8zJMHwCjXn4/1Tp4Lr/z99MfsH
 JQ9WSLOYrbRHLvLb+jYq4ybmpPSYP8yLgHeAT4UZE8esxffhErWaNKG4xR5mg/jlceIQ
 FnnYTnyQDdMo3XmZn0JSI4LCWBajYDSDKHPIyCSgEoZGMBM7X3d5CAcbkH6EA+50QVDm
 X/1NfB0+c17FcTdb/pLAtex116sTr2w/kW3joLc4YWnoKLLFQ085Uh37mcib5ScFISQA
 4Wwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=oqj9O6FXAxGlS96ZsZVHaoinnYv4TIUSkqiULLQiocI=;
 b=Vkif2f05tYtmIjW0jHgXwCjulrjHE1SWEr6qVxqhTfUhanh/4KuB5rTe3qiZGSlh+g
 iah8D5C/oMpeE2RbcAqCoOqDf3UkGh7OZ+59uOsZ2zjh7kdJgf7uK3Q7LF21zIIhku7P
 zXgz+lz43vTROHh3eQbcvJQ7g7KlbuI+2UFgbPxCIRlAXRc8f9VAVCDy8129rziKVuPU
 4SOtlzw6CXiOOS6V6WkY6V/8P8RNULNnyEiLCFjKjd6ebYdloWGwNdmeIh4qVZbXKbly
 XIuus/kcUqeB6TccSHQrxIjVpneC4981yKRGLHNwx5MjI8mme2kdfX555/Xt5k7PNc1W
 M5Lg==
X-Gm-Message-State: APjAAAWDrrRtCKKl003/5U2blUX1s6nyURcjTmjh4n/Uv/VE1yaAtTuN
 uIljyq492k5/0KeSN16rG11RoknF
X-Google-Smtp-Source: APXvYqx2jfiLmiZW1N0D1t7+y/oGePry5pkiKmMMqvd5cWHBrJS4iAMEtkl2G3rM2omki1SRgi+G0A==
X-Received: by 2002:aed:2469:: with SMTP id s38mr12126069qtc.190.1567811388075; 
 Fri, 06 Sep 2019 16:09:48 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id z20sm3319483qtu.91.2019.09.06.16.09.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 16:09:47 -0700 (PDT)
Message-ID: <5D72E717.6010801@gmail.com>
Date: Fri, 06 Sep 2019 19:09:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu>
In-Reply-To: <7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu>
Subject: Re: [USRP-users] Processor requirements for full-rate streaming on
 N320
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
Content-Type: multipart/mixed; boundary="===============2456198246317320651=="
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
--===============2456198246317320651==
Content-Type: multipart/alternative;
 boundary="------------090506070707090001030906"

This is a multi-part message in MIME format.
--------------090506070707090001030906
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 09/06/2019 05:53 PM, Lundberg, Daniel via USRP-users wrote:
>
> Does anyone have a known good hardware configuration to support full 
> (or at least close to full) 200 MS/s streaming from the N320?  
> Preferably with 1 Tx and 2 Rx channels.
>
> As a data point, a recent i3 (4 cores) seems to be choking above 62.5 
> MS/s.  This is over dual SFP+ ports.  At higher sampling rates, it is 
> producing U’s, which I interpret to mean that the cpu can’t shovel 
> samples into the radio fast enough, not that there is a network jam.
>
> Thank you,
>
> DL
>
>
Even if you aren't really "touching" the samples, an i3 is very-likely 
not going to be the CPU for you.  But beyond that, MUCH depends on
   exactly *what* you're doing with the samples--both in terms of 
"where/how" do they originate and "what are you doing with them once
   you have them?"

The number of MIPS required is proportional to the 
inherent-per-sample-processing-complexity X sample-rate.  Further, lots 
of things
   in the "sample pipeline" aren't particularly amenable to being 
parallelized, so a single CPU *has* to be adequate to handle that
   part of the task, or you start falling behind, even if other bits and 
pieces of your processing chain are done in parallel.  This generally 
selects
   for faster CPUs with higher clock speeds (3.5GHz and higher) and 
faster internal bus structures, and the fastest memory you can afford.





--------------090506070707090001030906
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/06/2019 05:53 PM, Lundberg,
      Daniel via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Does anyone have a known good hardware
          configuration to support full (or at least close to full) 200
          MS/s streaming from the N320?  Preferably with 1 Tx and 2 Rx
          channels.<o:p></o:p></p>
        <p class="MsoNormal">As a data point, a recent i3 (4 cores)
          seems to be choking above 62.5 MS/s.  This is over dual SFP+
          ports.  At higher sampling rates, it is producing U’s, which I
          interpret to mean that the cpu can’t shovel samples into the
          radio fast enough, not that there is a network jam.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thank you,<o:p></o:p></p>
        <p class="MsoNormal">DL<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    Even if you aren't really "touching" the samples, an i3 is
    very-likely not going to be the CPU for you.  But beyond that, MUCH
    depends on<br>
      exactly *what* you're doing with the samples--both in terms of
    "where/how" do they originate and "what are you doing with them once<br>
      you have them?"<br>
    <br>
    The number of MIPS required is proportional to the
    inherent-per-sample-processing-complexity X sample-rate.  Further,
    lots of things<br>
      in the "sample pipeline" aren't particularly amenable to being
    parallelized, so a single CPU *has* to be adequate to handle that<br>
      part of the task, or you start falling behind, even if other bits
    and pieces of your processing chain are done in parallel.  This
    generally selects<br>
      for faster CPUs with higher clock speeds (3.5GHz and higher) and
    faster internal bus structures, and the fastest memory you can
    afford.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------090506070707090001030906--


--===============2456198246317320651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2456198246317320651==--

