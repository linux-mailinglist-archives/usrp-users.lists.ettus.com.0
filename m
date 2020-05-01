Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C1B1C1CC1
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 20:18:23 +0200 (CEST)
Received: from [::1] (port=59674 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUaEs-0002YF-Ne; Fri, 01 May 2020 14:18:18 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:43418)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jUaEp-0002OH-ET
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 14:18:15 -0400
Received: by mail-qk1-f181.google.com with SMTP id i136so5952027qke.10
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 11:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=ur5T6U77tAxM12Os+mb6AmGlfR/PbqF+RvdC2hisUbo=;
 b=I0puXEgYbBnCiiC6Nacb4nKx4/NoecEETNU2bMw/EGQZkCxg0z3Bx9GrutZDZXgs6v
 nVKGjMf8zoNtt1x51EmJ+UtUi3o4RR3OyhBuHRMVgvTJq52cPErdaLwQD3b4/fs4zDrJ
 Js5JkUFo73TG/r7AX11YWPX2g3v3zl2CrWnN8QnMPZIcgZO4Mgp/F9idDX92esM6NSip
 XDigszSLNJ3/+7bv3t+3goFbGJKVn7CUvuw3OAFrJqJQsmh3kCsn7tkLPnNLR7gjkzKl
 MijDFqRILz+XgwAb/HHtlnc5QBgoIdf0b5P11Cx5hx60sxy6U7vX1wtd7H1v8xWWyql0
 Q6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=ur5T6U77tAxM12Os+mb6AmGlfR/PbqF+RvdC2hisUbo=;
 b=p0EE6MuA7zbeNKGx9k443j11kaZMaHh/iHNPkYXoVz2T+NetKGXOS0Ha8okNrmRdCX
 Z5sMydiLkVuwXQxZH1SXX4v7RBTl5taUbeA1mXM46IBCZhgzFXixer5sQlUiz2S0S9vf
 nxmqU7xgB7ozQL1Ex/CTbDoKl2+TzWjgO73Gm1Su2JBLSUzypP0jDaMSAD/afcvXuLR5
 0PCbh9Hbmk0TmQ9mszN2r4mpyTLzc1U7g+LCqLhZRPBqXrYp78UZns4CsIiFP/WZh3AP
 jbSrSE6srHoDF9MyKu7FYFSSmhTYcqhsTK8iXj763NjJnyhID3jJUa6C6VCEeVHlD5Fj
 aYFA==
X-Gm-Message-State: AGi0Pub+wfSTtfSBlrKVm5uJXoJGLYaMEBtYohpFjUvBzRMP175e2n/K
 71wUDN2fjkOOMgvzTP3lKzCMAyustoA=
X-Google-Smtp-Source: APiQypLB1011f/v8m59hlyOGF61aPaNyl0xY5NOaq7bMY3YCCYcSkAFxTWPFi7uec8Xasp69V5qJBA==
X-Received: by 2002:a37:a490:: with SMTP id n138mr4862586qke.106.1588357054714; 
 Fri, 01 May 2020 11:17:34 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-211.dsl.bell.ca. [69.158.143.211])
 by smtp.googlemail.com with ESMTPSA id r51sm3200632qtk.89.2020.05.01.11.17.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 01 May 2020 11:17:34 -0700 (PDT)
Message-ID: <5EAC67BD.7000105@gmail.com>
Date: Fri, 01 May 2020 14:17:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BY5PR19MB339879DA30F3129CB923F7F4C6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
 <CAEXYVK6gX7EtOQYwCJw3YUEF-O3E3-Ug8KF+Eg9hHFAmrRMpXw@mail.gmail.com>
 <BY5PR19MB339830DC61596E09FB2FB24DC6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
In-Reply-To: <BY5PR19MB339830DC61596E09FB2FB24DC6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
Subject: Re: [USRP-users] Setting up an X310 as a signal generator
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
Content-Type: multipart/mixed; boundary="===============4473377859688378446=="
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
--===============4473377859688378446==
Content-Type: multipart/alternative;
 boundary="------------070706030002000100060106"

This is a multi-part message in MIME format.
--------------070706030002000100060106
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/01/2020 01:35 PM, Jerrid Plymale via USRP-users wrote:
>
> Brian,
>
> Thank you for the quick response! I will try the DRAM FIFO and see if 
> that works. As I am working from home at the moment I do not have 
> access to a spectrum analyzer, Is there anyway I can use any of the QT 
> GUI blocks in gnuradio to determine a rough estimate? I know that the 
> values you set are just values and that you have to determine how they 
> correspond to actual values, but is there a way to do that 
> mathematically? Determining metrics for this project have definitely 
> been a struggle me so far.
>
> Best Regards,
>
> Jerrid
>
If you're using the multi_usrp interface via Gnu Radio, then the DRAM 
FIFO won't be directly visible to you.  What sample rate are you trying
   to sustain?  Can you share your flow-graph with us?

Underruns mean that your host CPU isn't "keeping up" with the 
sample-rate demand from the X310, and if that is an ongoing thing, then no
   amount of buffering will help.


> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Friday, May 1, 2020 10:28 AM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Setting up an X310 as a signal generator
>
> On Fri, May 1, 2020 at 1:23 PM Jerrid Plymale via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hello All,
>
>     So I have been trying to set up a USRP X310 as a signal generator
>     for about a week now, and I知 having some issues. Currently I am
>     using gnuradio-companion to develop the functionality. I have
>     three sets of signal sources that are of float type, creating the
>     I and Q values that get passed to a float to complex block. The
>     output of the three float to complex blocks go to an add block,
>     which then outputs to a USRP sink. Currently, the first problem is
>     with underruns, I知 not getting a lot of them however I am getting
>     breaks in the signal when I pass it to a second USRP X310. What
>     would be the best approach to make sure my signal is coming in
>     strong to the second USRP? I am also having issues with increasing
>     the power of the signal when it is received, is this mainly
>     controlled by the gain value on the USRP source in gnuradio? What
>     can I do to get my incoming signal to have more power?
>
> You can try placing a DRAM FIFO in your transmit flow graph as the 
> first thing.  That should ensure some tens of milliseconds worth of 
> buffering for your signals and allow for some host jitter without 
> underruns.
>
> Do you have an external spectrum analyzer or something that can tell 
> you the power output of the first radio?
>
> The receivers should be able to be saturated by your transmitter, so 
> there's definitely a gain issue somewhere.
>
> Brian
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------070706030002000100060106
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/01/2020 01:35 PM, Jerrid Plymale
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BY5PR19MB339830DC61596E09FB2FB24DC6AB0@BY5PR19MB3398.namprd19.prod.outlook.com"
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
	color:blue;
	text-decoration:underline;}
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
        <p class="MsoNormal">Brian,<o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal">Thank you for the quick response! I will
          try the DRAM FIFO and see if that works. As I am working from
          home at the moment I do not have access to a spectrum
          analyzer, Is there anyway I can use any of the QT GUI blocks
          in gnuradio to determine a rough estimate? I know that the
          values you set are just values and that you have to determine
          how they correspond to actual values, but is there a way to do
          that mathematically? Determining metrics for this project have
          definitely been a struggle me so far.<o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal">Best Regards,<o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal">Jerrid</p>
      </div>
    </blockquote>
    If you're using the multi_usrp interface via Gnu Radio, then the
    DRAM FIFO won't be directly visible to you. What sample rate are
    you trying<br>
     to sustain? Can you share your flow-graph with us?<br>
    <br>
    Underruns mean that your host CPU isn't "keeping up" with the
    sample-rate demand from the X310, and if that is an ongoing thing,
    then no<br>
     amount of buffering will help.<br>
    <br>
    <br>
    <blockquote
cite="mid:BY5PR19MB339830DC61596E09FB2FB24DC6AB0@BY5PR19MB3398.namprd19.prod.outlook.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <div style="border:none;border-top:solid #E1E1E1
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class="MsoNormal"><b>From:</b> Brian Padalino
            <a class="moz-txt-link-rfc2396E" href="mailto:bpadalino@gmail.com">&lt;bpadalino@gmail.com&gt;</a> <br>
            <b>Sent:</b> Friday, May 1, 2020 10:28 AM<br>
            <b>To:</b> Jerrid Plymale
            <a class="moz-txt-link-rfc2396E" href="mailto:jerrid.plymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
            <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
            <b>Subject:</b> Re: [USRP-users] Setting up an X310 as a
            signal generator<o:p></o:p></p>
        </div>
        <p class="MsoNormal"><o:p></o:p></p>
        <div>
          <div>
            <p class="MsoNormal">On Fri, May 1, 2020 at 1:23 PM Jerrid
              Plymale via USRP-users &lt;<a moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
              wrote:<o:p></o:p></p>
          </div>
          <div>
            <blockquote style="border:none;border-left:solid #CCCCCC
              1.0pt;padding:0in 0in 0in
              6.0pt;margin-left:4.8pt;margin-right:0in">
              <div>
                <div>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Hello
                    All,<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">So
                    I have been trying to set up a USRP X310 as a signal
                    generator for about a week now, and I知 having some
                    issues. Currently I am using gnuradio-companion to
                    develop the functionality. I have three sets of
                    signal sources that are of float type, creating the
                    I and Q values that get passed to a float to complex
                    block. The output of the three float to complex
                    blocks go to an add block, which then outputs to a
                    USRP sink. Currently, the first problem is with
                    underruns, I知 not getting a lot of them however I
                    am getting breaks in the signal when I pass it to a
                    second USRP X310. What would be the best approach to
                    make sure my signal is coming in strong to the
                    second USRP? I am also having issues with increasing
                    the power of the signal when it is received, is this
                    mainly controlled by the gain value on the USRP
                    source in gnuradio? What can I do to get my incoming
                    signal to have more power?<o:p></o:p></p>
                </div>
              </div>
            </blockquote>
            <div>
              <p class="MsoNormal"><o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal">You can try placing a DRAM FIFO in
                your transmit flow graph as the first thing. That
                should ensure some tens of milliseconds worth of
                buffering for your signals and allow for some host
                jitter without underruns.<o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal"><o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal">Do you have an external spectrum
                analyzer or something that can tell you the power output
                of the first radio?<o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal"><o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal">The receivers should be able to be
                saturated by your transmitter, so there's definitely a
                gain issue somewhere.<o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal"><o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal">Brian<o:p></o:p></p>
            </div>
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

--------------070706030002000100060106--


--===============4473377859688378446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4473377859688378446==--

