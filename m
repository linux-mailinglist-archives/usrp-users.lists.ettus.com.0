Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 909E6397F7
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 23:41:49 +0200 (CEST)
Received: from [::1] (port=34546 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZMcO-0000QB-GO; Fri, 07 Jun 2019 17:41:48 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:42910)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hZMcK-0000I8-FQ
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 17:41:44 -0400
Received: by mail-qk1-f174.google.com with SMTP id b18so2186747qkc.9
 for <usrp-users@lists.ettus.com>; Fri, 07 Jun 2019 14:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=xDereqNoqmIEOINvroRJkXllOiwpJm6W454dJ64db4A=;
 b=druZ3RE2ujlvahr9rsJLHpfUEWA54Ck82Uv8cAt5/m1h8aLCi22YmstfUJfCJBIYvr
 Ogic12r1JiWMwzGkBBsqiNTGIuCmhKVgyFp3Sbmfos0P1yZWlTWgJvlyJztnhmId0lAs
 iqLD99fJjxVZOpAo7YFjixrWr5ff18h7WMooQUGcS4J7D7qVs530iLxnv8VJGTV3npCS
 tVVRLsOhpVB9ADDcW8JmmFtQXu8XkJ4fRgh+ch6XOjgaEMBbVyw0zmZZHqYhHr+lrhU8
 WkvAJyaumCV5wsJPXIzb0hxiwxh07PPPjjdLER2b56qivg6ELdieq4Ltq+Tq1N4G3l6f
 u+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=xDereqNoqmIEOINvroRJkXllOiwpJm6W454dJ64db4A=;
 b=uMUhYZAhrQNzqBsaV8jEpbTjwcn/XlAeiQva9Yavaz934Qeb2dbLjHNjlOcr4cCA8W
 2/GHxlgwYcZoVfJyW2RFTkGu884+xfMtsvSVFH1zvJiJ6mArRacGCKiUqfchr7fEYR2V
 yiCJdcuNU8geze7Cu6jZH8A4HS1iSV0dBvJ+O3MP0hSY7cWHUrFvjZtrt0B+mvrj9oGZ
 HhI2c7j/QgtYJu+ys0i64JitbMO9po14rsnfj37X+PT8Nx67oEb05A6Le5G06Vhxp/MQ
 ecsawInEbXKsq0g4sePHcvkjeSxIFVCYDyn0V73GTLqQ2w7aEYI3tbxGXOlsxQbV5ir8
 QGFQ==
X-Gm-Message-State: APjAAAW9iwkoRKQGLHPdgsqx4KMgvY/OLgihjHAXGH9GBv1I16BCW0M6
 v3pgUgNv5MDW9xgBy3rl27pip6Yqez0=
X-Google-Smtp-Source: APXvYqz3TblqfppeifG5yKEnUWXKZtbcsOqi4V87qDoLxZMubDb6qhx+/N6C1vDm4dNQJiYEX95aAQ==
X-Received: by 2002:a37:502:: with SMTP id 2mr42976111qkf.93.1559943663730;
 Fri, 07 Jun 2019 14:41:03 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id m66sm1728514qkb.12.2019.06.07.14.41.02
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 14:41:03 -0700 (PDT)
Message-ID: <5CFAD9EE.2050207@gmail.com>
Date: Fri, 07 Jun 2019 17:41:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <8415D3F8-C584-4C83-A315-C9941AD31D30@contoso.com>
 <CACaXmv8D+NtFt0+ctcuQifEF9sU5-WNeL-fH5JvgrSO-W_4czw@mail.gmail.com>
 <7437763A-2155-4736-AC0C-1B3C4F77B676@iubelttechnologies.com>
In-Reply-To: <7437763A-2155-4736-AC0C-1B3C4F77B676@iubelttechnologies.com>
Subject: Re: [USRP-users] UHD Comms Error
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
Content-Type: multipart/mixed; boundary="===============3768343504398412753=="
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
--===============3768343504398412753==
Content-Type: multipart/alternative;
 boundary="------------010101020208060702030102"

This is a multi-part message in MIME format.
--------------010101020208060702030102
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/07/2019 12:29 PM, Mark Koenig via USRP-users wrote:
>
> I am using a thunderbolt 3 interface, but only using it at 1Gig, 
> standard 1500 MTU.  I am running at a sample rate of 25Msps.
>
If the problem is less-prevalent at lower sample rates, that suggests 
that your interface is dropping packets.

Keep mind that 1 Gig interface can support 25Msps at the absolute 
maximum at standard sample sizes.  So, you're
   right on the edge, and if the host interface is occasionally dropping 
frames during a control transaction, that will
   cause a failed transaction--the UHD protocol assumes an error-free 
channel, and has no provision for dealing with
   dropped packets.


> Mark
>
> *From: *Neel Pandeya <neel.pandeya@ettus.com>
> *Date: *Thursday, June 6, 2019 at 2:00 PM
> *To: *Mark Koenig <mark.koenig@iubelttechnologies.com>
> *Cc: *"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] UHD Comms Error
>
> Hello Mark:
>
> This may indicate a hardware problem.  What is specifically eliciting 
> the error?  Does it occur with every time that there is a tune 
> request?  Are you running your own program, or one the example 
> programs, such as "rx_samples_to_file"?  Could you please try 
> upgrading to UHD 3.14.0.0, and re-running your test, and let me know 
> your results?
>
> --Neel Pandeya
>
> On Thu, 6 Jun 2019 at 12:47, Mark Koenig via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Please help, with the error I am seeing.
>
>     I am currently using an X310 with a UBX160 daughtercard and I get
>     the error below when changing the frequency parameters of the radio.
>
>     RuntimeError: EnvironmentError: IOError: Radio ctrl (A) packet
>     parse error - AssertionError: packet_info.packet_count ==
>     (seq_to_ack & 0xfff)
>
>     in uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool)
>
>     I am currently running UHD 3.9.7, but have also seen a similar
>     error with 3.10.2
>
>     Thanks
>
>     Mark
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------010101020208060702030102
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/07/2019 12:29 PM, Mark Koenig via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:7437763A-2155-4736-AC0C-1B3C4F77B676@iubelttechnologies.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Title" content="">
      <meta name="Keywords" content="">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.msoIns
	{mso-style-type:export-only;
	mso-style-name:"";
	text-decoration:underline;
	color:teal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal">I am using a thunderbolt 3 interface, but
          only using it at 1Gig, standard 1500 MTU.  I am running at a
          sample rate of 25Msps.</p>
      </div>
    </blockquote>
    If the problem is less-prevalent at lower sample rates, that
    suggests that your interface is dropping packets.<br>
    <br>
    Keep mind that 1 Gig interface can support 25Msps at the absolute
    maximum at standard sample sizes.  So, you're<br>
      right on the edge, and if the host interface is occasionally
    dropping frames during a control transaction, that will<br>
      cause a failed transaction--the UHD protocol assumes an error-free
    channel, and has no provision for dealing with<br>
      dropped packets.<br>
    <br>
    <br>
    <blockquote
      cite="mid:7437763A-2155-4736-AC0C-1B3C4F77B676@iubelttechnologies.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Mark<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div style="border:none;border-top:solid #B5C4DF
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class="MsoNormal"><b><span
                style="font-size:12.0pt;color:black">From: </span></b><span
              style="font-size:12.0pt;color:black">Neel Pandeya
              <a class="moz-txt-link-rfc2396E" href="mailto:neel.pandeya@ettus.com">&lt;neel.pandeya@ettus.com&gt;</a><br>
              <b>Date: </b>Thursday, June 6, 2019 at 2:00 PM<br>
              <b>To: </b>Mark Koenig
              <a class="moz-txt-link-rfc2396E" href="mailto:mark.koenig@iubelttechnologies.com">&lt;mark.koenig@iubelttechnologies.com&gt;</a><br>
              <b>Cc: </b><a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">"usrp-users@lists.ettus.com"</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject: </b>Re: [USRP-users] UHD Comms Error<o:p></o:p></span></p>
        </div>
        <div>
          <p class="MsoNormal"><o:p> </o:p></p>
        </div>
        <div>
          <div>
            <p class="MsoNormal"><span
                style="font-family:&quot;Verdana&quot;,sans-serif">Hello
                Mark:<o:p></o:p></span></p>
          </div>
          <div>
            <p class="MsoNormal"><span
                style="font-family:&quot;Verdana&quot;,sans-serif"><o:p> </o:p></span></p>
          </div>
          <div>
            <p class="MsoNormal"><span
                style="font-family:&quot;Verdana&quot;,sans-serif">This
                may indicate a hardware problem.  What is specifically
                eliciting the error?  Does it occur with every time that
                there is a tune request?  Are you running your own
                program, or one the example programs, such as
                "rx_samples_to_file"?  Could you please try upgrading to
                UHD 3.14.0.0, and re-running your test, and let me know
                your results?<o:p></o:p></span></p>
          </div>
          <div>
            <p class="MsoNormal"><span
                style="font-family:&quot;Verdana&quot;,sans-serif"><o:p> </o:p></span></p>
          </div>
          <div>
            <p class="MsoNormal"><span
                style="font-family:&quot;Verdana&quot;,sans-serif">--Neel
                Pandeya<o:p></o:p></span></p>
          </div>
          <div>
            <p class="MsoNormal"><span
                style="font-family:&quot;Verdana&quot;,sans-serif"><o:p> </o:p></span></p>
          </div>
          <div>
            <p class="MsoNormal"><span
                style="font-family:&quot;Verdana&quot;,sans-serif"><o:p> </o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <div>
            <p class="MsoNormal">On Thu, 6 Jun 2019 at 12:47, Mark
              Koenig via USRP-users &lt;<a moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style="border:none;border-left:solid #CCCCCC
            1.0pt;padding:0in 0in 0in
            6.0pt;margin-left:4.8pt;margin-right:0in">
            <div>
              <div>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Please
                  help, with the error I am seeing.<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                  am currently using an X310 with a UBX160 daughtercard
                  and I get the error below when changing the frequency
                  parameters of the radio.<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">RuntimeError:
                  EnvironmentError: IOError: Radio ctrl (A) packet parse
                  error - AssertionError: packet_info.packet_count ==
                  (seq_to_ack &amp; 0xfff)<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> 
                  in uint64_t
                  radio_ctrl_core_3000_impl::wait_for_ack(bool)<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                  am currently running UHD 3.9.7, but have also seen a
                  similar error with 3.10.2<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Thanks<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Mark<o:p></o:p></p>
              </div>
            </div>
            <p class="MsoNormal">_______________________________________________<br>
              USRP-users mailing list<br>
              <a moz-do-not-send="true"
                href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
              <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></p>
          </blockquote>
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

--------------010101020208060702030102--


--===============3768343504398412753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3768343504398412753==--

