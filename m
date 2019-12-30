Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D42CC12D4C2
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2019 23:15:37 +0100 (CET)
Received: from [::1] (port=39232 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1im3K2-0006LJ-2X; Mon, 30 Dec 2019 17:15:34 -0500
Received: from mail-ot1-f41.google.com ([209.85.210.41]:44081)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1im3Jy-0006Cy-C9
 for usrp-users@lists.ettus.com; Mon, 30 Dec 2019 17:15:30 -0500
Received: by mail-ot1-f41.google.com with SMTP id h9so45321497otj.11
 for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2019 14:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=af0AZvlYprhghAIhtdybl0RG4vfYFkYxqaO/35uiH8U=;
 b=aKKg2myDZ2Tpml6Udu4b9afOsE2POgSSTYG5eZdgqaLhNxHOnXSXmTK6eoPYb8ttQD
 tLWXyVGDYT1lcsXhPsAaljZjeI/OdRbgZfZRLGXUIRvDCqakgJlsaKJRePPIQNm3To6g
 30AAzfP0ZC5mOxOwsklphcsZYDU24pujivUqbwDXE7yB47v8mrjb7fxyhWUfDz5kmdxh
 awyEOujVleXslDBCC7ALWWxnF9iNKpmNIhNIdJwqjcnJ2EOrJ18qbr9+sPdEyoimPDSK
 nVJPNgcbJjLpcBLWJmFv8fRRB60+EOJqJzh8ma2NYA+xrWTbRRv6QmPGAQY6kePj0OcM
 jwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=af0AZvlYprhghAIhtdybl0RG4vfYFkYxqaO/35uiH8U=;
 b=D5qhH5yoLX8gIIDjrIPz2jM9kLQpkhcfQHXMX/yBNFUz7E4rLWFHyq03pvZGWN68XA
 pzF/PTW6U0NHKZZpe6bPN8FjVZ4zZI1KgFMqgdqKaCRn3XhfVyi776wYCK0WIutc9vbj
 DRS/VHKTUNikjF+SPF/8KN404EId5cwTPOaubfx2KT3ly2ni/+lHkFATvvXoMHoK0qHL
 TC8zfjh42i6bpdod2/3L+D1vFZU/i/LOnlenQw4tvzGaI6fL7bgzhTUOoJJCMnbq/ITD
 yv/MTojoKA+WW3jX1tppnzidnj4NXmY5+WvmklBEMBF5mzM8+SlXUqz78wScAqPmaguQ
 HrpA==
X-Gm-Message-State: APjAAAXLx6p5opOnFQu8UCpJTuzmFeGr+52FE4sBXa9x0Q+B0JImURP9
 IcGOD6BOckoyJcxhSUjEcpSOkqdrWA/89x4YHGjqng==
X-Google-Smtp-Source: APXvYqz1QsBvVS2RXlKXReE/M4gxkbx0FlVJJasLFSB5izXCoBcd+UFa3x94qif7bVsvsLSFXCZ0Bv0LJ7jgoiBWdIY=
X-Received: by 2002:a05:6830:4d9:: with SMTP id
 s25mr76904692otd.171.1577744089461; 
 Mon, 30 Dec 2019 14:14:49 -0800 (PST)
MIME-Version: 1.0
References: <1273926885.14075492.1576508432546.ref@mail.yahoo.com>
 <1273926885.14075492.1576508432546@mail.yahoo.com>
 <CANf970ZfAdBmr0QgutUbQoJseNF6F24W78XvhbKWzbcheDRRVQ@mail.gmail.com>
 <1913144600.796210.1576668010291@mail.yahoo.com>
 <775991377.807374.1576670484801@mail.yahoo.com>
 <CAB__hTQOaq9Gvb=1GzivNEif+P1cRCdAEnuL=rYW8cTs5KMuFA@mail.gmail.com>
 <499433417.5064469.1577742246595@mail.yahoo.com>
In-Reply-To: <499433417.5064469.1577742246595@mail.yahoo.com>
Date: Mon, 30 Dec 2019 17:14:38 -0500
Message-ID: <CAB__hTQDZcFTBZahcCfp8ifsC27vmEJhgnsXyRJQjnO7b9sbEA@mail.gmail.com>
To: "santu_voonna@yahoo.com" <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] set_tx_freq is not functioning properly
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3679246920332293100=="
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

--===============3679246920332293100==
Content-Type: multipart/alternative; boundary="000000000000ffe580059af32b8e"

--000000000000ffe580059af32b8e
Content-Type: text/plain; charset="UTF-8"

If the digital values are all zeros, then there will not be much RF
output.  Sam previously requested that you try "tx_waveforms" and you
replied that it works fine.  Does this mean that you are able to set the
frequency to any desired value and then observe the expected result on your
spectrum analyzer?

Rob

On Mon, Dec 30, 2019 at 4:44 PM voonna santosh <santu_voonna@yahoo.com>
wrote:

> Yes .. all are zeros
>
> Sent from Yahoo Mail on Android
> <https://go.onelink.me/107872968?pid=InProduct&c=Global_Internal_YGrowth_AndroidEmailSig__AndroidUsers&af_wl=ym&af_sub1=Internal&af_sub2=Global_YGrowth&af_sub3=EmailSignature>
>
> On Mon, 30 Dec 2019 at 15:45, Rob Kossler
> <rkossler@nd.edu> wrote:
> Perhaps the digital values are all zero for benchmark rate?
>
> On Wed, Dec 18, 2019 at 7:02 AM voonna santosh via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> One more thing to add:
> If I run benchmark_rate with out any modifications, then the output in
> scope if perfect.
>
> I have added the following code snippet to configure the tx_freq and there
> is nothing observed in scope.
>
> if (vm.count("tx_freq")){
>       for(size_t ch = 0; ch < tx_channel_nums.size(); ch++) {
>         std::cout << boost::format("Setting TX Freq: %f MHz...") %
> (tx_freq/1e6) << std::endl;
>         uhd::tune_request_t tune_request(tx_freq);
>         if(vm.count("int-n")) tune_request.args =
> uhd::device_addr_t("mode_n=integer");
>         usrp->set_tx_freq(tune_request, tx_channel_nums[ch]);
>         std::cout << boost::format("Actual TX Freq: %f MHz...") %
> (usrp->get_tx_freq(tx_channel_nums[ch])/1e6) << std::endl << std::endl;
>     }
> }
>
> Command used for testing: ./benchmark_rate --args="addr=192.168.40.2"
> --channels="0" --tx_rate 50e6 --tx_freq 20e6 --duration 50
>
>
> NOTE: I am using Agilent E4402B to analyze the spectrum (9KHz to 3 GHz)
>
> Thanks,
> Santosh
>
>
>
>
>
> On Wednesday, December 18, 2019, 11:20:10 AM GMT, voonna santosh <
> santu_voonna@yahoo.com> wrote:
>
>
> FYI:
> Does something like tx_waveforms[1] output a signal at the expected
> frequency?
>  - Yes, both tx_wavefrom and benchmark_rate works fine. I took benchamark
> rate and extended it to get tx_freq configured. This is not working.
>
>
> With respect to the 10MHz, this is the frequency of signals used to
> discipline the internal timebase to an external source. I wouldn't expect
> artifacts from this signal to be present at the TX port under normal
> circumstances. Are you using an external reference? What about the GPSDO?
>   - Since my base line is benchmark_rate, the default frequency is 10MHz
> which always works fine. But when I change the frequency, thats when I see
> the issue. I couldn't trace where it is getting set, but it does. Can you
> please let me know where in the code, it sets the frequency to 10MHz ?
>
> BR,
> Santosh
>
>
>
>
>
> On Tuesday, December 17, 2019, 11:45:29 PM GMT, Sam Reiter <
> sam.reiter@ettus.com> wrote:
>
>
> Does something like tx_waveforms[1] output a signal at the expected
> frequency?
>
> What are you using to measure the frequency output?
>
> With respect to the 10MHz, this is the frequency of signals used to
> discipline the internal timebase to an external source. I wouldn't expect
> artifacts from this signal to be present at the TX port under normal
> circumstances. Are you using an external reference? What about the GPSDO?
>
> [1]
> https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_waveforms.cpp
>
> Sam Reiter
> Ettus Research
>
>
> On Mon, Dec 16, 2019 at 9:01 AM voonna santosh via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi There,
>    I have bench marked X300 against my development PC. Then I took
> benchmark_rate code and modified a bit. Everything works fine except
> setting the center freq.
>    When ever I set the center frequency, there is no error returned by the
> call. But when I transmit the data, it doesn't appear in scope. Whenever I
> remove the code to set the center frequency, things work fine and I cann
> see a spike at 10Mhz which is default frequency I guess. Any clues?
>
> std::cout << boost::format("Setting TX Freq: %f MHz...") % (freq/1e6) <<
> std::endl;
> uhd::tune_request_t tune_request(freq);
> //usrp->set_tx_freq(tune_request, 0); - This line also doesn't work
> usrp->set_tx_freq(freq, 0);
> std::cout << boost::format("Actual TX Freq: %f MHz...") %
> (usrp->get_tx_freq(0)/1e6) << std::endl << std::endl;
>
> Thanks and Regards
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000ffe580059af32b8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If the digital values are all zeros, then there will not b=
e much RF output.=C2=A0 Sam previously requested that you try &quot;tx_wave=
forms&quot; and you replied that it works fine.=C2=A0 Does this mean that y=
ou are able to set the frequency to any desired value and then observe the =
expected result on your spectrum analyzer?<div><br></div><div>Rob</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, Dec 30, 2019 at 4:44 PM voonna santosh &lt;<a href=3D"mailto:santu_voon=
na@yahoo.com">santu_voonna@yahoo.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Yes .. all are zeros<br id=3D"gmail-m_-=
6513662493382931304yMail_cursorElementTracker_1577742217147"><br><div id=3D=
"gmail-m_-6513662493382931304ymail_android_signature"><a id=3D"gmail-m_-651=
3662493382931304ymail_android_signature_link" href=3D"https://go.onelink.me=
/107872968?pid=3DInProduct&amp;c=3DGlobal_Internal_YGrowth_AndroidEmailSig_=
_AndroidUsers&amp;af_wl=3Dym&amp;af_sub1=3DInternal&amp;af_sub2=3DGlobal_YG=
rowth&amp;af_sub3=3DEmailSignature" target=3D"_blank">Sent from Yahoo Mail =
on Android</a></div> <br> <blockquote style=3D"margin:0px 0px 20px"> <div s=
tyle=3D"font-family:Roboto,sans-serif;color:rgb(109,0,246)"> <div>On Mon, 3=
0 Dec 2019 at 15:45, Rob Kossler</div><div>&lt;<a href=3D"mailto:rkossler@n=
d.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:</div> </div> <div s=
tyle=3D"padding:10px 0px 0px 20px;margin:10px 0px 0px;border-left:1px solid=
 rgb(109,0,246)"> <div id=3D"gmail-m_-6513662493382931304yiv0617080586"><di=
v><div dir=3D"ltr">Perhaps the digital values are all zero for benchmark ra=
te?</div><br clear=3D"none"><div><div id=3D"gmail-m_-6513662493382931304yiv=
0617080586yqt47218"><div dir=3D"ltr">On Wed, Dec 18, 2019 at 7:02 AM voonna=
 santosh via USRP-users &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br clear=3D"none"></div><blockquote style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><d=
iv><div></div>
        <div dir=3D"ltr">One more thing to add:</div><div dir=3D"ltr">If I =
run benchmark_rate with out any modifications, then the output in scope if =
perfect. <br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div=
><div dir=3D"ltr">I have added the following code snippet to configure the =
tx_freq and there is nothing observed in scope.</div><div dir=3D"ltr"><br c=
lear=3D"none"></div><div dir=3D"ltr"><div>if (vm.count(&quot;tx_freq&quot;)=
){<br clear=3D"none">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for(size_t ch =3D 0; ch=
 &lt; tx_channel_nums.size(); ch++) {<br clear=3D"none">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 std::cout &lt;&lt; boost::format(&quot;Setting TX =
Freq: %f MHz...&quot;) % (tx_freq/1e6) &lt;&lt; std::endl;<br clear=3D"none=
">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd::tune_request_t tune_reque=
st(tx_freq);<br clear=3D"none">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i=
f(vm.count(&quot;int-n&quot;)) tune_request.args =3D uhd::device_addr_t(&qu=
ot;mode_n=3Dinteger&quot;);<br clear=3D"none">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 usrp-&gt;set_tx_freq(tune_request, tx_channel_nums[ch]);<br=
 clear=3D"none">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 std::cout &lt;&l=
t; boost::format(&quot;Actual TX Freq: %f MHz...&quot;) % (usrp-&gt;get_tx_=
freq(tx_channel_nums[ch])/1e6) &lt;&lt; std::endl &lt;&lt; std::endl;<br cl=
ear=3D"none">=C2=A0=C2=A0=C2=A0 }<br clear=3D"none">}</div><div><br clear=
=3D"none"></div><div dir=3D"ltr">Command used for testing: <span>./benchmar=
k_rate --args=3D&quot;addr=3D192.168.40.2&quot; --channels=3D&quot;0&quot; =
--tx_rate 50e6 --tx_freq 20e6 --duration 50</span><br clear=3D"none"></div>=
<div><br clear=3D"none"></div><div><br clear=3D"none"></div><div dir=3D"ltr=
">NOTE: I am using Agilent E4402B to analyze the spectrum (9KHz to 3 GHz)<b=
r clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=
=3D"ltr">Thanks,</div><div dir=3D"ltr">Santosh<br clear=3D"none"></div></di=
v><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"n=
one"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br c=
lear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"gmail-m_-6513662493382931304yiv0617080586gmail-m_3=
547915342933947221yahoo_quoted_7071217456">
            <div>
               =20
                <div>
                    On Wednesday, December 18, 2019, 11:20:10 AM GMT, voonn=
a santosh &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:santu_voonn=
a@yahoo.com" target=3D"_blank">santu_voonna@yahoo.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"gmail-m_-6513662493382931304yiv0617080586gm=
ail-m_3547915342933947221yiv9449169570"><div><div><div>FYI:</div><div dir=
=3D"ltr"><span>Does something like tx_waveforms[1] output a signal at the e=
xpected frequency?</span></div><div dir=3D"ltr"><span>=C2=A0- Yes, both tx_=
wavefrom and benchmark_rate works fine. I took benchamark rate and extended=
 it to get tx_freq configured. This is not working.</span></div><div dir=3D=
"ltr"><span><br clear=3D"none"></span></div><div dir=3D"ltr"><span><br clea=
r=3D"none"></span></div><div dir=3D"ltr"><div><div>With respect to the 10MH=
z, this is the=20
frequency of signals used to discipline the internal timebase to an=20
external source. I wouldn&#39;t expect artifacts from this signal to be=20
present at the TX port under normal circumstances. Are you using an=20
external reference? What about the GPSDO? <br clear=3D"none"></div><div dir=
=3D"ltr">=C2=A0 - Since my base line is benchmark_rate, the default frequen=
cy is 10MHz which always works fine. But when I change the frequency, thats=
 when I see the issue. I couldn&#39;t trace where it is getting set, but it=
 does. Can you please let me know where in the code, it sets the frequency =
to 10MHz ? <br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></d=
iv><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh<br clear=3D"none"></d=
iv></div><div><br clear=3D"none"></div><span></span></div><div dir=3D"ltr">=
<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=
=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div=
><div id=3D"gmail-m_-6513662493382931304yiv0617080586gmail-m_35479153429339=
47221yiv9449169570yqt97274"><div id=3D"gmail-m_-6513662493382931304yiv06170=
80586gmail-m_3547915342933947221yiv9449169570yahoo_quoted_6715818642">
            <div>
               =20
                <div>
                    On Tuesday, December 17, 2019, 11:45:29 PM GMT, Sam Rei=
ter &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:sam.reiter@ettus.=
com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"gmail-m_-6513662493382931304yiv0617080586gm=
ail-m_3547915342933947221yiv9449169570"><div><div dir=3D"ltr">Does somethin=
g like tx_waveforms[1] output a signal at the expected frequency?<div><br c=
lear=3D"none"></div><div>What are you using to measure the frequency output=
?</div><div><br clear=3D"none"></div><div>With respect to the 10MHz, this i=
s the frequency of signals used to discipline the internal timebase to an e=
xternal source. I wouldn&#39;t expect artifacts from this signal to be pres=
ent at the TX port under normal circumstances. Are you using an external re=
ference? What about the GPSDO?=C2=A0</div><div><br clear=3D"none"></div><di=
v>[1]=C2=A0<a rel=3D"nofollow" shape=3D"rect" href=3D"https://github.com/Et=
tusResearch/uhd/blob/master/host/examples/tx_waveforms.cpp" target=3D"_blan=
k">https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_wavefo=
rms.cpp</a><br clear=3D"none"><div><br clear=3D"none"></div><div><div><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Sam Reiter=C2=A0</div><div di=
r=3D"ltr">Ettus Research</div></div></div></div><br clear=3D"none"></div></=
div></div><br clear=3D"none"><div><div id=3D"gmail-m_-6513662493382931304yi=
v0617080586gmail-m_3547915342933947221yiv9449169570yqt39504"><div dir=3D"lt=
r">On Mon, Dec 16, 2019 at 9:01 AM voonna santosh via USRP-users &lt;<a rel=
=3D"nofollow" shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none">=
</div><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div><div><div dir=3D"ltr">Hi There,</div=
><div dir=3D"ltr">=C2=A0=C2=A0 I have bench marked X300 against my developm=
ent PC. Then I took benchmark_rate code and modified a bit. Everything work=
s fine except setting the center freq.</div><div dir=3D"ltr">=C2=A0=C2=A0 W=
hen ever I set the center frequency, there is no error returned by the call=
. But when I transmit the data, it doesn&#39;t appear in scope. Whenever I =
remove the code to set the center frequency, things work fine and I cann se=
e a spike at 10Mhz which is default frequency I guess. Any clues?</div><div=
 dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><div dir=3D"ltr">std=
::cout &lt;&lt; boost::format(&quot;Setting TX Freq: %f MHz...&quot;) % (fr=
eq/1e6) &lt;&lt; std::endl;<br clear=3D"none">uhd::tune_request_t tune_requ=
est(freq);<br clear=3D"none"><div>//usrp-&gt;set_tx_freq(tune_request, 0); =
- This line also doesn&#39;t work<br clear=3D"none"></div>usrp-&gt;set_tx_f=
req(freq, 0);<br clear=3D"none">std::cout &lt;&lt; boost::format(&quot;Actu=
al TX Freq: %f MHz...&quot;) % (usrp-&gt;get_tx_freq(0)/1e6) &lt;&lt; std::=
endl &lt;&lt; std::endl;<br clear=3D"none"><br clear=3D"none"></div><div di=
r=3D"ltr">Thanks and Regards<br clear=3D"none"></div></div></div></div>____=
___________________________________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></div></div></div></div></div>
            </div>
        </div></div>_______________________________________________<br clea=
r=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div> </div> </blockquote></blockquote></di=
v>

--000000000000ffe580059af32b8e--


--===============3679246920332293100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3679246920332293100==--

