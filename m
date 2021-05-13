Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6070837F80D
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 14:37:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 10BB3384054
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 08:37:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="ojbK+wKX";
	dkim-atps=neutral
Received: from www.itsystems.it (mx1.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 8003F383BF2
	for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 08:36:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2tRF4dCZ7qCRke1S+X3epzJqMxkhaOyEmiUSPck7F+c=; b=ojbK+wKXgQA6lLDQbPwhk1ET8m
	7x7fR5u17doZi7clkVQ/q/7Pn1WJSVozJZN9Z2eXSKTTu4UojwSnz4RTjN2TMR6aaHhI28cfUJ7YF
	OOmFztaSOmGYjgG+mGojcU8NAevOIYVaDAzPYUpYhtA403AuQUfNiWLHTFKFU6ESfopY=;
Received: from 77-32-2-68.dyn.eolo.it ([77.32.2.68] helo=[192.168.178.108])
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1lhAZH-0000eJ-EH
	for usrp-users@lists.ettus.com; Thu, 13 May 2021 12:35:56 +0000
To: usrp-users@lists.ettus.com
References: <a727fc16-1130-7c5c-8063-805745cb4f93@itsystems.it>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <6ef711fc-1995-b2d7-9b63-d7cdae857d3c@itsystems.it>
Date: Thu, 13 May 2021 14:36:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <a727fc16-1130-7c5c-8063-805745cb4f93@itsystems.it>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: =?unknown-8bit?q?Spam_detection_software=2C_running_on_the_system_=22v-mx=2Evirt=2Eitsystems=2Eit=22=2C?=
 =?unknown-8bit?q?_has_NOT_identified_this_incoming_email_as_spam=2E__The_original?=
 =?unknown-8bit?q?_message_has_been_attached_to_this_so_you_can_view_it_or_label?=
 =?unknown-8bit?q?_similar_future_email=2E__If_you_have_any_questions=2C_see?=
 =?unknown-8bit?q?_the_administrator_of_that_system_for_details=2E?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_Content_preview=3A__The_problem_was=2C_of_course=2C_mine_I_had=C2=A0_wrong_line_in_my?=
 =?unknown-8bit?q?_cmake=2E_With_libuhd_3=2E10=2E3_I_had_the_line_set=28MY=5FSTATIC=5FLIB_-Wl=2C--whole-archive?=
 =?unknown-8bit?q?_=24=7BUHD=5FSTATIC=7D_-Wl=2C--no-whole-archive_=24=7BDL=5FSTATIC=7D=29_?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_Content_analysis_details=3A___=28-2=2E9_points=2C_5=2E0_required=29?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_pts_rule_name______________description?=
 =?unknown-8bit?q?_----_----------------------_--------------------------------------------------?=
 =?unknown-8bit?q?_0=2E0_NO=5FDNS=5FFOR=5FFROM________DNS=3A_Envelope_sender_has_no_MX_or_A_DNS_records?=
 =?unknown-8bit?q?_-1=2E0_ALL=5FTRUSTED____________Passed_through_trusted_hosts_only_via_SMTP?=
 =?unknown-8bit?q?_-1=2E9_BAYES=5F00_______________BODY=3A_Bayes_spam_probability_is_0_to_1=25?=
 =?unknown-8bit?q?_=5Bscore=3A_0=2E0000=5D?=
 =?unknown-8bit?q?_0=2E0_TVD=5FRCVD=5FIP____________Message_was_received_from_an_IP_address?=
 =?unknown-8bit?q?_0=2E0_HTML=5FMESSAGE___________BODY=3A_HTML_included_in_message?=
 =?unknown-8bit?q?_-0=2E0_NICE=5FREPLY=5FA___________Looks_like_a_legit_reply_=28A=29?=
Message-ID-Hash: 4OIJGXJAZ5KLXCRBK7JS56ORF6FXIFNO
X-Message-ID-Hash: 4OIJGXJAZ5KLXCRBK7JS56ORF6FXIFNO
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd-3.15 static compilation problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4OIJGXJAZ5KLXCRBK7JS56ORF6FXIFNO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6084038149309137763=="

This is a multi-part message in MIME format.
--===============6084038149309137763==
Content-Type: multipart/alternative;
 boundary="------------E68AEDFD354FFA5D15E005F3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E68AEDFD354FFA5D15E005F3
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The problem was, of course, mine

I had=C2=A0 wrong line in my cmake. With libuhd 3.10.3 I had the line

set(MY_STATIC_LIB -Wl,--whole-archive ${UHD_STATIC}
-Wl,--no-whole-archive ${DL_STATIC})

while for libuhd 3.15

set(MY_STATIC_LIB -Wl,--whole-archive ${UHD_STATIC} -Wl,-no-whole-archive=
)

However I have proposal for a fix for the CMkeFiles of libuhd 3.15. I
don't know if it is the case to discuss it here, or directly with=C2=A0
developer.

If=C2=A0 developer or a moderator will read this mail, please let me know=
.

Thank you in advance

Paolo


On 5/12/21 10:38 AM, Paolo Palana wrote:
>
> Hi to all the mailing list.
>
> I'm trying to compile libuhd-3.15 in order to get the static version
> of this library, but I've problems. The platform I'm using in ubuntu
> 18.04 x86_64
>
> the cmake command I use is: cmake -DENABLE_STATIC_LIBS=3DON
> -DENABLE_LIBERIO=3DOFF -DENABLE_USB=3DOFF -DENABLE_B100=3DOFF
> -DENABLE_B200=3DOFF -DENABLE_E300=3DOFF -DENABLE_USRP1=3DOFF
> -DENABLE_USRP2=3DOFF -DENABLE_N230=3DOFF -DENABLE_MPMD=3DOFF
> -DENABLE_E320=3DOFF -DENABLE_OCTOCLOCK=3DOFF -DENABLE_DPDK=3DOFF ../
>
> The compilation process seems to be ok, but I get from the linker the
> error: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a(operations.o):
> relocation R_X86_64_PC32 against symbol ......
>
> If I run the command VERBOSE=3D1 make I can see that the linker command
> issued to=C2=A0 generate of libuhd.so try to link libbost_*.a files in
> order to genertate the libuhd.so file. To be plain I'm not very
> familiar with this kind of problems, but I think this is not correct.
> I did many try and guess to solve the issue and I found that
> commenting the line set(Boost_USE_STATIC_LIBS ${ENABLE_STATIC_LIBS})
> in cmake/Modules/UHDBoost.cmake seems to solve the problem, both
> libuhd.so and libuhd.a are generated.
>
> But now another problem arise, when I compile my static application I
> get other link errors like:
>
> usr/lib/gcc/x86_64-linux-gnu/7/../../../x86_64-linux-gnu/libdl.a(dlerro=
r.o):
> In function `dlerror':
> (.text+0x1): undefined reference to `__dlerror'
>
> Because the same application is succesfully compiled on the same
> system (so system libraries are exactly the same) using libuhd 3.10.3
> I think these errors could be related with something wrong I did in
> compiling libuhd-3.15. Of course every time I need to change libuhd
> version I uninstall (through make uninstall) the undesired library.
>
> So my question is, what is wrong with libuhd-3.15 or, better, what I
> did wrong?
>
> Thank you for your kindness.
>
> Paolo
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com



--------------E68AEDFD354FFA5D15E005F3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">The problem was, of course, mine</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">I had=C2=A0 wrong line in my cmake. Wi=
th
      libuhd 3.10.3 I had the line</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">set(MY_STATIC_LIB -Wl,--whole-archive
      ${UHD_STATIC} -Wl,--no-whole-archive ${DL_STATIC})</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">while for libuhd 3.15 <br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">set(MY_STATIC_LIB -Wl,--whole-archive
      ${UHD_STATIC} -Wl,-no-whole-archive)</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">However I have proposal for a fix for
      the CMkeFiles of libuhd 3.15. I don't know if it is the case to
      discuss it here, or directly with=C2=A0 developer.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">If=C2=A0 developer or a moderator will=
 read
      this mail, please let me know.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Thank you in advance</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Paolo<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 5/12/21 10:38 AM, Paolo Palana
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a727fc16-1130-7c5c-8063-805745cb4f93@itsystems.it">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi to all the mailing list.</p>
      <p>I'm trying to compile libuhd-3.15 in order to get the static
        version of this library, but I've problems. The platform I'm
        using in ubuntu 18.04 x86_64<br>
      </p>
      <p>the cmake command I use is: <font size=3D"-1">cmake
          -DENABLE_STATIC_LIBS=3DON -DENABLE_LIBERIO=3DOFF -DENABLE_USB=3D=
OFF
          -DENABLE_B100=3DOFF -DENABLE_B200=3DOFF -DENABLE_E300=3DOFF
          -DENABLE_USRP1=3DOFF -DENABLE_USRP2=3DOFF -DENABLE_N230=3DOFF
          -DENABLE_MPMD=3DOFF -DENABLE_E320=3DOFF -DENABLE_OCTOCLOCK=3DOF=
F
          -DENABLE_DPDK=3DOFF ../</font></p>
      <p>The compilation process seems to be ok, but I get from the
        linker the error: <font size=3D"-1">/usr/lib/x86_64-linux-gnu/lib=
boost_filesystem.a(operations.o):
          relocation R_X86_64_PC32 against symbol ......</font></p>
      <p>If I run the command VERBOSE=3D1 make I can see that the linker
        command issued to=C2=A0 generate of libuhd.so try to link libbost=
_*.a
        files in order to genertate the libuhd.so file. To be plain I'm
        not very familiar with this kind of problems, but I think this
        is not correct. I did many try and guess to solve the issue and
        I found that commenting the line set(Boost_USE_STATIC_LIBS
        ${ENABLE_STATIC_LIBS}) in cmake/Modules/UHDBoost.cmake seems to
        solve the problem, both libuhd.so and libuhd.a are generated.</p>
      <p>But now another problem arise, when I compile my static
        application I get other link errors like:</p>
      <p><font size=3D"-1">usr/lib/gcc/x86_64-linux-gnu/7/../../../x86_64=
-linux-gnu/libdl.a(dlerror.o):
          In function `dlerror':<br>
          (.text+0x1): undefined reference to `__dlerror'</font></p>
      <p>Because the same application is succesfully compiled on the
        same system (so system libraries are exactly the same) using
        libuhd 3.10.3 I think these errors could be related with
        something wrong I did in compiling libuhd-3.15. Of course every
        time I need to change libuhd version I uninstall (through make
        uninstall) the undesired library.</p>
      <p>So my question is, what is wrong with libuhd-3.15 or, better,
        what I did wrong?</p>
      <p>Thank you for your kindness.</p>
      <p>Paolo<br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------E68AEDFD354FFA5D15E005F3--

--===============6084038149309137763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6084038149309137763==--
