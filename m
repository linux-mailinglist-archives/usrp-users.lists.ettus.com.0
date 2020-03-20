Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB44B18D494
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 17:36:40 +0100 (CET)
Received: from [::1] (port=47794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFKdS-0008VK-Vw; Fri, 20 Mar 2020 12:36:38 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:41751)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jFKdO-0008MH-UV
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 12:36:34 -0400
Received: by mail-qt1-f172.google.com with SMTP id i3so1593463qtv.8
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 09:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=SIdDvOnPa7QaYc5LBcOY7fmAx6/K3uEdfT0KWnDXhmY=;
 b=X3eTKLbWGVus9eYA5JWYjeSZzAH2Yyxgf9qyoIR+XqwBCR3/qNybSHG1Sme5FMrJz9
 vvsaRh0T/jv8+34/4xRnH3I6XjtNpPMqXNV3Mq0Jv3tfrEnb3EuP7L4RMHpAuQ0r3X0K
 pxVAGaeDjVItYnz8w13y3pCM3BB3+vfDFKENBRH9OQpBFORvx2X1I+r/vK3NoOuIvMhf
 TCBND5KiYEzmuXZ8wVQKMxJezPSeWK0qgt9+iyK+6+vUwXJE6vIErqF2Xs4LZlFEzA6U
 M62CWM3JquEWtKb8+ki4C5sfwGKrXUJnRdGZ3y2KuQtBMame4lXIv8mGOR5usdnNtf8e
 BOiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=SIdDvOnPa7QaYc5LBcOY7fmAx6/K3uEdfT0KWnDXhmY=;
 b=HEU4a0iyeeB6tY0W4kDS4u4PZPNiYqU3sYqnRHil7EA739waLYcNuMOotWQBNnmZ2T
 qJpRKG6uWML5CsansMu/xB0sU+x3ADPOFuPg4JDpiOr/JtSUYDCFbRgTxhbJA8z/o17b
 dp6DHVF2TCa9Wf9fHk29ZDAb/N6ly5jLa3t/1727edw2qimCmk9qCd2rsFCyFbk3idTp
 TAA46ZSiXLRGiRNf56Kg3nktIoMT2g3w36Qu1yWxHB8jenqcYvBXg0y6Om/yQZNI9c+r
 GYHuxl7RGBcHoJlF6se4rzCgCCiIQEh2W+6K0yd3ezXKrbWZyKvoqKuwkVu7YF2XWHh8
 QhWQ==
X-Gm-Message-State: ANhLgQ1+mcoOMCDkKD788iWW4BImVa/xMP93WWqK46LtwnAEedtB9lBu
 b23oK2aTvBBB8ciBQkidu+ZnibTM
X-Google-Smtp-Source: ADFU+vu+fskvhd8Rk9ftM+UikTJnCOh1rTdI3HX+F7taMUpTHNaLybVhoX7NYBWgQEUVQINbhwukYg==
X-Received: by 2002:aed:2a0c:: with SMTP id c12mr9041492qtd.391.1584722152683; 
 Fri, 20 Mar 2020 09:35:52 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id e2sm4464990qkb.112.2020.03.20.09.35.52
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Mar 2020 09:35:52 -0700 (PDT)
Message-ID: <5E74F0E7.3070205@gmail.com>
Date: Fri, 20 Mar 2020 12:35:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <10F7328F6AD1354BA6DD787687B66B9001A304FD87@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A304FD87@Maui.in.dynetics.com>
Subject: Re: [USRP-users] MTU Issues after upgrading to UHD 3.15.0
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
Content-Type: multipart/mixed; boundary="===============0630112042709092930=="
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
--===============0630112042709092930==
Content-Type: multipart/alternative;
 boundary="------------010804000309020602010507"

This is a multi-part message in MIME format.
--------------010804000309020602010507
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 03/20/2020 08:08 AM, Carmichael, Ryan via USRP-users wrote:
>
> So, interestingly, that does not work. Around ping –s 8100 it stops 
> working.
>
> Sounds like this may either be a Linux networking issue or NIC issue 
> rather than a UHD issue. I will investigate and see what’s happening 
> there.
>
> Perhaps this was always an issue even with 3.11 but it wasn’t being 
> reported?
>
That has been my suspicion.

> - Ryan
>
> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, March 19, 2020 9:48 PM
> *To:* Carmichael, Ryan <Ryan.Carmichael@dynetics.com>; 
> usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] MTU Issues after upgrading to 
> UHD 3.15.0
>
> *Might be useful to do a ping -s 8500 to the X310, and see if it works.*
>
> /
> ------------------------------------------------------------------------
>
> The information contained in this message, and any attachments, may 
> contain privileged and/or proprietary information that is intended 
> solely for the person or entity to which it is addressed. Moreover, it 
> may contain export restricted technical data controlled by Export 
> Administration Regulations (EAR) or the International Traffic in Arms 
> Regulations (ITAR). Any review, retransmission, dissemination, or 
> re-export to foreign or domestic entities by anyone other than the 
> intended recipient in accordance with EAR and/or ITAR regulations is 
> prohibited.
>
> /
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------010804000309020602010507
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/20/2020 08:08 AM, Carmichael,
      Ryan via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:10F7328F6AD1354BA6DD787687B66B9001A304FD87@Maui.in.dynetics.com"
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle25
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">So,
            interestingly, that does not work. Around ping –s 8100 it
            stops working.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Sounds
            like this may either be a Linux networking issue or NIC
            issue rather than a UHD issue. I will investigate and see
            what’s happening there.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Perhaps
            this was always an issue even with 3.11 but it wasn’t being
            reported?</span></p>
      </div>
    </blockquote>
    That has been my suspicion.<br>
    <br>
    <blockquote
cite="mid:10F7328F6AD1354BA6DD787687B66B9001A304FD87@Maui.in.dynetics.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">-
            Ryan<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext">
                Marcus D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Thursday, March 19, 2020 9:48 PM<br>
                <b>To:</b> Carmichael, Ryan
                <a class="moz-txt-link-rfc2396E" href="mailto:Ryan.Carmichael@dynetics.com">&lt;Ryan.Carmichael@dynetics.com&gt;</a>;
                <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [EXTERNAL] Re: [USRP-users] MTU Issues
                after upgrading to UHD 3.15.0</span><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"> </span><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"><o:p></o:p></span></p>
          </div>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><o:p> </o:p></p>
        </blockquote>
        <p class="MsoNormal" style="margin-bottom:12.0pt"><b>Might be
            useful to do a ping -s 8500 to the X310, and see if it
            works.</b><o:p></o:p></p>
      </div>
      <i><br>
        <hr>
        <p style="font-size:8pt; line-height:9pt; font-style:monospace">The
          information contained in this message, and any attachments,
          may contain privileged and/or proprietary information that is
          intended solely for the person or entity to which it is
          addressed. Moreover, it may contain export restricted
          technical data controlled by Export Administration Regulations
          (EAR) or the International Traffic in Arms Regulations (ITAR).
          Any review, retransmission, dissemination, or re-export to
          foreign or domestic entities by anyone other than the intended
          recipient in accordance with EAR and/or ITAR regulations is
          prohibited.</p>
      </i>
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

--------------010804000309020602010507--


--===============0630112042709092930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0630112042709092930==--

