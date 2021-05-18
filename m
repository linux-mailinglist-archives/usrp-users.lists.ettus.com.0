Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF733871E2
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 08:28:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A211384228
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 02:28:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="M0+tlXxv";
	dkim-atps=neutral
Received: from www.itsystems.it (mx1.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id E85DB383F48
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 02:27:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:Cc:To:Subject:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RO4ccG0Pe3za1NhUk3mTTPEISs9vCq2xUnMfP9xpQMA=; b=M0+tlXxvSPt2HCbVS0jP3+fO7G
	BEkoL01Ft+0Oj53wIyzY1tfyLNGTQ/x+HJGUcWqpdxFabHjw+9NAM0DhQCJgvoIgCpnon6zkMS5o3
	N6X0IVCQOmOrnZoqmS+cuGIsUHTVhRoh3UvnaMlvyRUSZOT8iEkWSevGssW7NYY14Kao=;
Received: from 77-32-26-57.dyn.eolo.it ([77.32.26.57] helo=[192.168.178.10])
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1litC8-0007ha-Su; Tue, 18 May 2021 06:27:09 +0000
To: Michael Dickens <michael.dickens@ettus.com>
References: <a727fc16-1130-7c5c-8063-805745cb4f93@itsystems.it>
 <6ef711fc-1995-b2d7-9b63-d7cdae857d3c@itsystems.it>
 <CAGNhwTPJcX0D-O4J8zbnxtK_OpE8F4PDobaEX_dgiW4OB3VOFQ@mail.gmail.com>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <d677755f-0c64-1bf4-5977-339b63dc187c@itsystems.it>
Date: Tue, 18 May 2021 08:27:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAGNhwTPJcX0D-O4J8zbnxtK_OpE8F4PDobaEX_dgiW4OB3VOFQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: =?unknown-8bit?q?Spam_detection_software=2C_running_on_the_system_=22v-mx=2Evirt=2Eitsystems=2Eit=22=2C?=
 =?unknown-8bit?q?_has_NOT_identified_this_incoming_email_as_spam=2E__The_original?=
 =?unknown-8bit?q?_message_has_been_attached_to_this_so_you_can_view_it_or_label?=
 =?unknown-8bit?q?_similar_future_email=2E__If_you_have_any_questions=2C_see?=
 =?unknown-8bit?q?_the_administrator_of_that_system_for_details=2E?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_Content_preview=3A__Hello_Michael=2C_Thank_you_for_your_reply_and_sorry_for_the?=
 =?unknown-8bit?q?_late_response=2E_To_be_precise_my_problem_was_not=2C_strictly_speaking=2C_in_the?=
 =?unknown-8bit?q?_compilation_phase=2C_but_instead=C2=A0_during_the_linking_stage=2E_As_I_said_in_the?=
 =?unknown-8bit?q?_first_mail_what_happened_was_that_during_the_generation_of_libuh_=5B=2E=2E=2E=5D_?=
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
Message-ID-Hash: KW5Y5ESVEBS3OB7V5FHZ7D3P7I5DAMMF
X-Message-ID-Hash: KW5Y5ESVEBS3OB7V5FHZ7D3P7I5DAMMF
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd-3.15 static compilation problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KW5Y5ESVEBS3OB7V5FHZ7D3P7I5DAMMF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4908586837111212395=="

This is a multi-part message in MIME format.
--===============4908586837111212395==
Content-Type: multipart/alternative;
 boundary="------------CB5413698E9AD78C7A02D1F0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CB5413698E9AD78C7A02D1F0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Michael,

Thank you for your reply and sorry for the late response.

To be precise my problem was not, strictly speaking, in the compilation=20
phase, but instead=C2=A0 during the linking stage. As I said in the first=
=20
mail what happened was that during the generation of libuhd.so the=20
command used for linking was trying to use libboost*.a.

My solution is quite simple (quick and dirty I should say), I commented=20
the line

set(Boost_USE_STATIC_LIBS ${ENABLE_STATIC_LIBS})

in host/cmake/Modules/UHDBoost.cmake and commented the call to dlopen in=20
host/lib/utils/load_modules.cpp. This way all the compilation process=20
(linking included) goes smootly, at least in my case.

For what concerns the compilation of a custom application that link=20
against libuhd.a I just used as "inspiration" the CMakeLists.txt file in=20
host/examples/init_usrp/. I used the variables=20
${UHD_STATIC_LIB_LINK_FLAG} and ${UHD_STATIC_LIB_DEPS}.

Thank you for your attention, have a good day

Paolo

On 5/13/21 3:40 PM, Michael Dickens wrote:
> Hi=C2=A0Paolo - Sounds like you've had some success getting the static=20
> build working under UHD 3.15 for your specific needs. If the details=20
> to get this working are relatively=C2=A0simple then please go ahead and=
=20
> post them here, and that might be useful for others. If they are=20
> somewhat involved then please just send them to me directly. Either=20
> way: We'll see what we can do to help get them documented and/or=20
> tweaked in UHD 3.15-LTS. - MLD
>
> On Thu, May 13, 2021 at 8:36 AM Paolo Palana <p.palana@itsystems.it=20
> <mailto:p.palana@itsystems.it>> wrote:
>
>     The problem was, of course, mine
>
>     I had=C2=A0 wrong line in my cmake. With libuhd 3.10.3 I had the li=
ne
>
>     set(MY_STATIC_LIB -Wl,--whole-archive ${UHD_STATIC}
>     -Wl,--no-whole-archive ${DL_STATIC})
>
>     while for libuhd 3.15
>
>     set(MY_STATIC_LIB -Wl,--whole-archive ${UHD_STATIC}
>     -Wl,-no-whole-archive)
>
>     However I have proposal for a fix for the CMkeFiles of libuhd
>     3.15. I don't know if it is the case to discuss it here, or
>     directly with=C2=A0 developer.
>
>     If=C2=A0 developer or a moderator will read this mail, please let m=
e know.
>
>     Thank you in advance
>
>     Paolo
>
>
>     On 5/12/21 10:38 AM, Paolo Palana wrote:
>>
>>     Hi to all the mailing list.
>>
>>     I'm trying to compile libuhd-3.15 in order to get the static
>>     version of this library, but I've problems. The platform I'm
>>     using in ubuntu 18.04 x86_64
>>
>>     the cmake command I use is: cmake -DENABLE_STATIC_LIBS=3DON
>>     -DENABLE_LIBERIO=3DOFF -DENABLE_USB=3DOFF -DENABLE_B100=3DOFF
>>     -DENABLE_B200=3DOFF -DENABLE_E300=3DOFF -DENABLE_USRP1=3DOFF
>>     -DENABLE_USRP2=3DOFF -DENABLE_N230=3DOFF -DENABLE_MPMD=3DOFF
>>     -DENABLE_E320=3DOFF -DENABLE_OCTOCLOCK=3DOFF -DENABLE_DPDK=3DOFF .=
./
>>
>>     The compilation process seems to be ok, but I get from the linker
>>     the error:
>>     /usr/lib/x86_64-linux-gnu/libboost_filesystem.a(operations.o):
>>     relocation R_X86_64_PC32 against symbol ......
>>
>>     If I run the command VERBOSE=3D1 make I can see that the linker
>>     command issued to=C2=A0 generate of libuhd.so try to link libbost_=
*.a
>>     files in order to genertate the libuhd.so file. To be plain I'm
>>     not very familiar with this kind of problems, but I think this is
>>     not correct. I did many try and guess to solve the issue and I
>>     found that commenting the line set(Boost_USE_STATIC_LIBS
>>     ${ENABLE_STATIC_LIBS}) in cmake/Modules/UHDBoost.cmake seems to
>>     solve the problem, both libuhd.so and libuhd.a are generated.
>>
>>     But now another problem arise, when I compile my static
>>     application I get other link errors like:
>>
>>     usr/lib/gcc/x86_64-linux-gnu/7/../../../x86_64-linux-gnu/libdl.a(d=
lerror.o):
>>     In function `dlerror':
>>     (.text+0x1): undefined reference to `__dlerror'
>>
>>     Because the same application is succesfully compiled on the same
>>     system (so system libraries are exactly the same) using libuhd
>>     3.10.3 I think these errors could be related with something wrong
>>     I did in compiling libuhd-3.15. Of course every time I need to
>>     change libuhd version I uninstall (through make uninstall) the
>>     undesired library.
>>
>>     So my question is, what is wrong with libuhd-3.15 or, better,
>>     what I did wrong?
>>
>>     Thank you for your kindness.
>>
>>     Paolo
>>
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp=
-users@lists.ettus.com>
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <=
mailto:usrp-users-leave@lists.ettus.com>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>

--------------CB5413698E9AD78C7A02D1F0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello Michael,</p>
    <p>Thank you for your reply and sorry for the late response.</p>
    <p>To be precise my problem was not, strictly speaking, in the
      compilation phase, but instead=C2=A0 during the linking stage. As I
      said in the first mail what happened was that during the
      generation of libuhd.so the command used for linking was trying to
      use libboost*.a.</p>
    <p>My solution is quite simple (quick and dirty I should say), I
      commented the line</p>
    <p>set(Boost_USE_STATIC_LIBS ${ENABLE_STATIC_LIBS})</p>
    <p>in host/cmake/Modules/UHDBoost.cmake and commented the call to
      dlopen in host/lib/utils/load_modules.cpp. This way all the
      compilation process (linking included) goes smootly, at least in
      my case.<br>
    </p>
    <p>For what concerns the compilation of a custom application that
      link against libuhd.a I just used as "inspiration" the
      CMakeLists.txt file in host/examples/init_usrp/. I used the
      variables ${UHD_STATIC_LIB_LINK_FLAG} and ${UHD_STATIC_LIB_DEPS}.<b=
r>
    </p>
    <p>Thank you for your attention, have a good day</p>
    <p>Paolo<br>
    </p>
    <div class=3D"moz-cite-prefix">On 5/13/21 3:40 PM, Michael Dickens
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGNhwTPJcX0D-O4J8zbnxtK_OpE8F4PDobaEX_dgiW4OB3VOFQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi=C2=A0Paolo - Sounds like you've had some succes=
s
        getting the static build working under UHD 3.15 for your
        specific needs. If the details to get this working are
        relatively=C2=A0simple then please go ahead and post them here, a=
nd
        that might be useful for others. If they are somewhat involved
        then please just send them to me directly. Either way: We'll see
        what we can do to help get them documented and/or tweaked in UHD
        3.15-LTS. - MLD<br>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 13, 2021 at 8:3=
6
          AM Paolo Palana &lt;<a href=3D"mailto:p.palana@itsystems.it"
            moz-do-not-send=3D"true">p.palana@itsystems.it</a>&gt; wrote:=
<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>The problem was, of course, mine</div>
            <div><br>
            </div>
            <div>I had=C2=A0 wrong line in my cmake. With libuhd 3.10.3 I=
 had
              the line</div>
            <div><br>
            </div>
            <div>set(MY_STATIC_LIB -Wl,--whole-archive ${UHD_STATIC}
              -Wl,--no-whole-archive ${DL_STATIC})</div>
            <div><br>
            </div>
            <div>while for libuhd 3.15 <br>
            </div>
            <div><br>
            </div>
            <div>set(MY_STATIC_LIB -Wl,--whole-archive ${UHD_STATIC}
              -Wl,-no-whole-archive)</div>
            <div><br>
            </div>
            <div>However I have proposal for a fix for the CMkeFiles of
              libuhd 3.15. I don't know if it is the case to discuss it
              here, or directly with=C2=A0 developer.</div>
            <div><br>
            </div>
            <div>If=C2=A0 developer or a moderator will read this mail,
              please let me know.</div>
            <div><br>
            </div>
            <div>Thank you in advance</div>
            <div><br>
            </div>
            <div>Paolo<br>
            </div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>On 5/12/21 10:38 AM, Paolo Palana wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <p>Hi to all the mailing list.</p>
              <p>I'm trying to compile libuhd-3.15 in order to get the
                static version of this library, but I've problems. The
                platform I'm using in ubuntu 18.04 x86_64<br>
              </p>
              <p>the cmake command I use is: <font size=3D"-1">cmake
                  -DENABLE_STATIC_LIBS=3DON -DENABLE_LIBERIO=3DOFF
                  -DENABLE_USB=3DOFF -DENABLE_B100=3DOFF -DENABLE_B200=3D=
OFF
                  -DENABLE_E300=3DOFF -DENABLE_USRP1=3DOFF
                  -DENABLE_USRP2=3DOFF -DENABLE_N230=3DOFF -DENABLE_MPMD=3D=
OFF
                  -DENABLE_E320=3DOFF -DENABLE_OCTOCLOCK=3DOFF
                  -DENABLE_DPDK=3DOFF ../</font></p>
              <p>The compilation process seems to be ok, but I get from
                the linker the error: <font size=3D"-1">/usr/lib/x86_64-l=
inux-gnu/libboost_filesystem.a(operations.o):
                  relocation R_X86_64_PC32 against symbol ......</font></=
p>
              <p>If I run the command VERBOSE=3D1 make I can see that the
                linker command issued to=C2=A0 generate of libuhd.so try =
to
                link libbost_*.a files in order to genertate the
                libuhd.so file. To be plain I'm not very familiar with
                this kind of problems, but I think this is not correct.
                I did many try and guess to solve the issue and I found
                that commenting the line set(Boost_USE_STATIC_LIBS
                ${ENABLE_STATIC_LIBS}) in cmake/Modules/UHDBoost.cmake
                seems to solve the problem, both libuhd.so and libuhd.a
                are generated.</p>
              <p>But now another problem arise, when I compile my static
                application I get other link errors like:</p>
              <p><font size=3D"-1">usr/lib/gcc/x86_64-linux-gnu/7/../../.=
./x86_64-linux-gnu/libdl.a(dlerror.o):
                  In function `dlerror':<br>
                  (.text+0x1): undefined reference to `__dlerror'</font><=
/p>
              <p>Because the same application is succesfully compiled on
                the same system (so system libraries are exactly the
                same) using libuhd 3.10.3 I think these errors could be
                related with something wrong I did in compiling
                libuhd-3.15. Of course every time I need to change
                libuhd version I uninstall (through make uninstall) the
                undesired library.</p>
              <p>So my question is, what is wrong with libuhd-3.15 or,
                better, what I did wrong?</p>
              <p>Thank you for your kindness.</p>
              <p>Paolo<br>
              </p>
              <p><br>
              </p>
              <p><br>
              </p>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
            </blockquote>
            <p><br>
            </p>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------CB5413698E9AD78C7A02D1F0--

--===============4908586837111212395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4908586837111212395==--
