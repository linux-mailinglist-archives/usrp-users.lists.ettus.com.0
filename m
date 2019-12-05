Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 699281147BD
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2019 20:38:45 +0100 (CET)
Received: from [::1] (port=56856 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icwxW-0004uS-Iw; Thu, 05 Dec 2019 14:38:42 -0500
Received: from mail-qv1-f49.google.com ([209.85.219.49]:40785)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1icwxT-0004qY-IY
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 14:38:39 -0500
Received: by mail-qv1-f49.google.com with SMTP id i3so1746393qvv.7
 for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2019 11:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=zpODkBxARnrevKgAyCcx0cBzjfjwcjO+LyxX8PRB6Sw=;
 b=chlQWjAWU8K/qGBbYUJ1ZQxNJmpUW1sN/cj7+7Htx/FlL/3xAfdILDGOxDzuggX7wU
 RcUe+ZuFrCM93UGBSsCHIxPeYw07AzdSHI6ghbkJ9jwbWrQwsdJMa0i+VMHjo+xa1PIY
 hbaFteT8S/vXuLQZYYivVjalrqx3cnKEm0Qi1wPZsWIPrC+L/arS93FpnbcXZEXq2gwj
 Jn16baI4NYo3okS9uYmpGMqjI4Jw1GbY5eDgeuxm9F1q9NTO8eBqcnikOF6w2oRYClaS
 p/8EE5duraZeXKNWW86SzPAmkaFv/m5/S404OCT1K3tVBmNyLmyq8v9szPbo7pX3msJm
 lQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=zpODkBxARnrevKgAyCcx0cBzjfjwcjO+LyxX8PRB6Sw=;
 b=T2WLJriKOJ80U9MJljtYrNhRF3ACugggcIsTlDWV8WBN0FZg4oNRQlMYjhnE1ZM42m
 ZZzlArQDtZSZm+aUD5+03FVYUYNQaPbbRiXqPAbvpIHq4GQr+PsoZc64pESPCyhRyGYK
 c5JzNmyh+zfh13noT4GHBc4N2NgO248mK3XsNVLl/CsWcu+zZQfEFHxD6RcyyWsFNUmc
 wuLXZocrlOzb54pZNAUe5nnrcbS8hRegHPO33BoaH2+TqX2Gyq56ydXOoU48U1VIjX0Q
 +XFimTC/9syQGT8FbYL6zjylgvXGGktgVRUQ08DHH+1q7rHRCV1x/4zWXF94PkF9Uh2+
 hmCQ==
X-Gm-Message-State: APjAAAUqOxKqPyIbrM3lzDbd19hsxzBtB508AopXRoGxbp5MOLlWCHd9
 HKMt97eQUpYvFh1t9kCk3AlQXtUq
X-Google-Smtp-Source: APXvYqx0msdw3hwfPUpd47KwDz18eReHj4eW/Ps/e9DUFtlItqYhmYAbVj9n7hQIaRtVWzOQkQptgQ==
X-Received: by 2002:a0c:e4cc:: with SMTP id g12mr9297623qvm.237.1575574678658; 
 Thu, 05 Dec 2019 11:37:58 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id d32sm4090901qtd.31.2019.12.05.11.37.57
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Dec 2019 11:37:58 -0800 (PST)
Message-ID: <5DE95C95.2030600@gmail.com>
Date: Thu, 05 Dec 2019 14:37:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <3d5ac01de97843d8aa5e64294f0585bb@dlr.de>
In-Reply-To: <3d5ac01de97843d8aa5e64294f0585bb@dlr.de>
Subject: Re: [USRP-users] B200mini external clock: loop over VCTCXO
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
Content-Type: multipart/mixed; boundary="===============5953740062633281659=="
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
--===============5953740062633281659==
Content-Type: multipart/alternative;
 boundary="------------070508010601040906080709"

This is a multi-part message in MIME format.
--------------070508010601040906080709
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/05/2019 03:17 AM, Emanuel via USRP-users wrote:
>
> Hi everybody,
>
> we are using an external 10MHz clock for the B200mini and have some 
> concerns/questions about the clocking architecture:
>
> 1.Do I see it correctly from the schematics, that the external 10MHz 
> reference is used in a control-loop within the FPGA to actually steer 
> the 40MHz VCTCXO with the DAC?
>
> 2.We used two B200mini with the same external clock and saw some weird 
> bumps in the Allan deviation plot, indicating partly contributions 
> from a whatsoever control loop and from the VCTCXO.
>
> 3.Why has the B200mini clocking architecture been chosen like that?
>
> a.Is the same architecture used for the B210 as well?
>
I can't tell *why* the architecture was chosen as it is.  But the B210 
has a hardware external-reference PLL, so behaves very differently.

> 4.How is the control loop for the external clock exactly implemented, 
> and which parameters are used?
>
> a.Are stability characteristics of the used VCTCXO taken into account?
>
> b.Could those parameters bee changed? If so, where and how?
>
The control loop is implemented in the FPGA code:

...uhd/fpga-src/usrp3/top/b2xxmini/b205_ref_pll.v


> Best regards,
>
> Emanuel
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------070508010601040906080709
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/05/2019 03:17 AM, Emanuel via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:3d5ac01de97843d8aa5e64294f0585bb@dlr.de"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:2080863241;
	mso-list-type:hybrid;
	mso-list-template-ids:2021580788 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi everybody,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">we are using an external 10MHz clock for
          the B200mini and have some concerns/questions about the
          clocking architecture:<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">1.<span style="font:7.0pt
              &quot;Times New Roman&quot;">      
            </span></span><!--[endif]-->Do I see it correctly from the
          schematics, that the external 10MHz reference is used in a
          control-loop within the FPGA to actually steer the 40MHz
          VCTCXO with the DAC?<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">2.<span style="font:7.0pt
              &quot;Times New Roman&quot;">      
            </span></span><!--[endif]-->We used two B200mini with the
          same external clock and saw some weird bumps in the Allan
          deviation plot, indicating partly contributions from a
          whatsoever control loop and from the VCTCXO.<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">3.<span style="font:7.0pt
              &quot;Times New Roman&quot;">      
            </span></span><!--[endif]-->Why has the B200mini clocking
          architecture been chosen like that?
          <o:p></o:p></p>
        <p class="MsoListParagraph"
          style="margin-left:72.0pt;text-indent:-18.0pt;mso-list:l0
          level2 lfo1">
          <!--[if !supportLists]--><span style="mso-list:Ignore">a.<span
              style="font:7.0pt &quot;Times New Roman&quot;">      
            </span></span><!--[endif]-->Is the same architecture used
          for the B210 as well?</p>
      </div>
    </blockquote>
    I can't tell *why* the architecture was chosen as it is.  But the
    B210 has a hardware external-reference PLL, so behaves very
    differently.<br>
    <br>
    <blockquote cite="mid:3d5ac01de97843d8aa5e64294f0585bb@dlr.de"
      type="cite">
      <div class="WordSection1">
        <p class="MsoListParagraph"
          style="margin-left:72.0pt;text-indent:-18.0pt;mso-list:l0
          level2 lfo1"><o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">4.<span style="font:7.0pt
              &quot;Times New Roman&quot;">      
            </span></span><!--[endif]-->How is the control loop for the
          external clock exactly implemented, and which parameters are
          used?<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="margin-left:72.0pt;text-indent:-18.0pt;mso-list:l0
          level2 lfo1">
          <!--[if !supportLists]--><span style="mso-list:Ignore">a.<span
              style="font:7.0pt &quot;Times New Roman&quot;">      
            </span></span><!--[endif]-->Are stability characteristics of
          the used VCTCXO taken into account?<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="margin-left:72.0pt;text-indent:-18.0pt;mso-list:l0
          level2 lfo1">
          <!--[if !supportLists]--><span style="mso-list:Ignore">b.<span
              style="font:7.0pt &quot;Times New Roman&quot;">     
            </span></span><!--[endif]-->Could those parameters bee
          changed? If so, where and how?</p>
      </div>
    </blockquote>
    The control loop is implemented in the FPGA code:<br>
    <br>
    ...uhd/fpga-src/usrp3/top/b2xxmini/b205_ref_pll.v<br>
    <br>
    <br>
    <blockquote cite="mid:3d5ac01de97843d8aa5e64294f0585bb@dlr.de"
      type="cite">
      <div class="WordSection1">
        <p class="MsoListParagraph"
          style="margin-left:72.0pt;text-indent:-18.0pt;mso-list:l0
          level2 lfo1"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best regards,<o:p></o:p></p>
        <p class="MsoNormal">Emanuel<o:p></o:p></p>
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

--------------070508010601040906080709--


--===============5953740062633281659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5953740062633281659==--

