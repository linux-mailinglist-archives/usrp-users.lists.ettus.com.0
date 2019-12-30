Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACB412D193
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2019 16:46:28 +0100 (CET)
Received: from [::1] (port=58342 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ilxFH-0002QQ-KB; Mon, 30 Dec 2019 10:46:15 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:39917)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ilxFE-0002Mv-Lf
 for usrp-users@lists.ettus.com; Mon, 30 Dec 2019 10:46:12 -0500
Received: by mail-ot1-f52.google.com with SMTP id 77so46659325oty.6
 for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2019 07:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uwRCkACWXsXg5n5RoouQBHHyExVOvHK/6q1JJbxGQq8=;
 b=jE7TRzCqH2tnvutKLQzY+CK/5j2PjjFh4bDAFnVX/MRv/Yc8h5wkfWNh+5RGjrM8fx
 ht3Zj+DPH5YvHnVQAlLAJoUfiwGWRmxpxQ4e63QzXMCqF0YwK4/QvJ0gidFUoidL1Eyd
 xNAYwMo+MrxpXQIGVIOOBc0YoasTjzPCOHu420QzGYddCSHxCTJ4APu6TbFvHKKhfzi+
 dZBMmL1Ow7lzNfbmkP4UJgQ8T8Xf6tw+ZmXFYXspreUEvVUJ+feaP6IpdNO+5DepMFJM
 eUnOkzlhKjJmEsZYnvNr0J2ULVVeIGKaRdx376EsSDsYAnSo7R0t9UYCiWiSxYsqiEUG
 huEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uwRCkACWXsXg5n5RoouQBHHyExVOvHK/6q1JJbxGQq8=;
 b=gjoaZDkVaWY74Ta+DyoNYgueqEemM2cxFUvfUMUjJo9s2rF0Nlr12C/XNu16riIU+s
 97WeQ2M+RyytEFL3PpW+0Cw3JjhssSnjbPU7VxYyLq7hDYCrwaTZPk5RibE0cXaviioc
 i2Ztxp9Icpir9BurnPg36J6alKwG02NviXXav6UkP4H504bseUK+DURQe+ETwYjac88v
 CnLf41FwKef4E/8D8H5CPjwSOplQGYw4tM204YrUhDrnPGEzj1ggq5D03roA5LaHGq9F
 Vy9LcZzdfTKO6CPyuP7H4BKZRO8At9wx9r6oTRQ33RmRP9Y+B0gvttvceyoFUEKEwBHz
 ubWg==
X-Gm-Message-State: APjAAAWpQzusg9fBWC8o4g5yA7ij/WQq9SvWRxDHMhcDqy7Dzr5nshGm
 a1o3Qk1xPf4oVS0oqDaujxy6rUZdnrPaRQkIWso7pw==
X-Google-Smtp-Source: APXvYqwHAeZdGkQpW0AD/7CgrXMKDa4CNfPskQEThAslVc2cRJD1OakjzVoo5aLeFA0Yew+ACrsdHiXmJzTx5QvLeyM=
X-Received: by 2002:a05:6830:4d9:: with SMTP id
 s25mr75112003otd.171.1577720731618; 
 Mon, 30 Dec 2019 07:45:31 -0800 (PST)
MIME-Version: 1.0
References: <1273926885.14075492.1576508432546.ref@mail.yahoo.com>
 <1273926885.14075492.1576508432546@mail.yahoo.com>
 <CANf970ZfAdBmr0QgutUbQoJseNF6F24W78XvhbKWzbcheDRRVQ@mail.gmail.com>
 <1913144600.796210.1576668010291@mail.yahoo.com>
 <775991377.807374.1576670484801@mail.yahoo.com>
In-Reply-To: <775991377.807374.1576670484801@mail.yahoo.com>
Date: Mon, 30 Dec 2019 10:45:22 -0500
Message-ID: <CAB__hTQOaq9Gvb=1GzivNEif+P1cRCdAEnuL=rYW8cTs5KMuFA@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
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
Content-Type: multipart/mixed; boundary="===============2003325210404392022=="
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

--===============2003325210404392022==
Content-Type: multipart/alternative; boundary="000000000000c37c16059aedbbbb"

--000000000000c37c16059aedbbbb
Content-Type: text/plain; charset="UTF-8"

Perhaps the digital values are all zero for benchmark rate?

On Wed, Dec 18, 2019 at 7:02 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

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

--000000000000c37c16059aedbbbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Perhaps the digital values are all zero for benchmark rate=
?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Dec 18, 2019 at 7:02 AM voonna santosh via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div =
style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;=
font-size:16px"><div></div>
        <div dir=3D"ltr">One more thing to add:</div><div dir=3D"ltr">If I =
run benchmark_rate with out any modifications, then the output in scope if =
perfect. <br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I have added=
 the following code snippet to configure the tx_freq and there is nothing o=
bserved in scope.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div>if =
(vm.count(&quot;tx_freq&quot;)){<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for(size=
_t ch =3D 0; ch &lt; tx_channel_nums.size(); ch++) {<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 std::cout &lt;&lt; boost::format(&quot;Setting TX =
Freq: %f MHz...&quot;) % (tx_freq/1e6) &lt;&lt; std::endl;<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd::tune_request_t tune_request(tx_freq);<b=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if(vm.count(&quot;int-n&quot;)=
) tune_request.args =3D uhd::device_addr_t(&quot;mode_n=3Dinteger&quot;);<b=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp-&gt;set_tx_freq(tune_requ=
est, tx_channel_nums[ch]);<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 st=
d::cout &lt;&lt; boost::format(&quot;Actual TX Freq: %f MHz...&quot;) % (us=
rp-&gt;get_tx_freq(tx_channel_nums[ch])/1e6) &lt;&lt; std::endl &lt;&lt; st=
d::endl;<br>=C2=A0=C2=A0=C2=A0 }<br>}</div><div><br></div><div dir=3D"ltr">=
Command used for testing: <span>./benchmark_rate --args=3D&quot;addr=3D192.=
168.40.2&quot; --channels=3D&quot;0&quot; --tx_rate 50e6 --tx_freq 20e6 --d=
uration 50</span><br></div><div><br></div><div><br></div><div dir=3D"ltr">N=
OTE: I am using Agilent E4402B to analyze the spectrum (9KHz to 3 GHz)<br><=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Thanks,</div><div dir=3D"l=
tr">Santosh<br></div></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div><br></div>
       =20
        </div><div id=3D"gmail-m_3547915342933947221yahoo_quoted_7071217456=
">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Wednesday, December 18, 2019, 11:20:10 AM GMT, voonn=
a santosh &lt;<a href=3D"mailto:santu_voonna@yahoo.com" target=3D"_blank">s=
antu_voonna@yahoo.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_3547915342933947221yiv9449169570"><=
div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sa=
ns-serif;font-size:16px"><div>FYI:</div><div dir=3D"ltr"><span>Does somethi=
ng like tx_waveforms[1] output a signal at the expected frequency?</span></=
div><div dir=3D"ltr"><span>=C2=A0- Yes, both tx_wavefrom and benchmark_rate=
 works fine. I took benchamark rate and extended it to get tx_freq configur=
ed. This is not working.</span></div><div dir=3D"ltr"><span><br clear=3D"no=
ne"></span></div><div dir=3D"ltr"><span><br clear=3D"none"></span></div><di=
v dir=3D"ltr"><div><div>With respect to the 10MHz, this is the=20
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
><div id=3D"gmail-m_3547915342933947221yiv9449169570yqt97274"><div id=3D"gm=
ail-m_3547915342933947221yiv9449169570yahoo_quoted_6715818642">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, December 17, 2019, 11:45:29 PM GMT, Sam Rei=
ter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reite=
r@ettus.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"gmail-m_3547915342933947221yiv9449169570"><=
div><div dir=3D"ltr">Does something like tx_waveforms[1] output a signal at=
 the expected frequency?<div><br clear=3D"none"></div><div>What are you usi=
ng to measure the frequency output?</div><div><br clear=3D"none"></div><div=
>With respect to the 10MHz, this is the frequency of signals used to discip=
line the internal timebase to an external source. I wouldn&#39;t expect art=
ifacts from this signal to be present at the TX port under normal circumsta=
nces. Are you using an external reference? What about the GPSDO?=C2=A0</div=
><div><br clear=3D"none"></div><div>[1]=C2=A0<a rel=3D"nofollow" shape=3D"r=
ect" href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples=
/tx_waveforms.cpp" target=3D"_blank">https://github.com/EttusResearch/uhd/b=
lob/master/host/examples/tx_waveforms.cpp</a><br clear=3D"none"><div><br cl=
ear=3D"none"></div><div><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr">Sam Reiter=C2=A0</div><div dir=3D"ltr">Ettus Research</div></div></div=
></div><br clear=3D"none"></div></div></div><br clear=3D"none"><div><div id=
=3D"gmail-m_3547915342933947221yiv9449169570yqt39504"><div dir=3D"ltr">On M=
on, Dec 16, 2019 at 9:01 AM voonna santosh via USRP-users &lt;<a rel=3D"nof=
ollow" shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><=
blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div><div><div dir=3D"ltr">Hi There,</div><div d=
ir=3D"ltr">=C2=A0=C2=A0 I have bench marked X300 against my development PC.=
 Then I took benchmark_rate code and modified a bit. Everything works fine =
except setting the center freq.</div><div dir=3D"ltr">=C2=A0=C2=A0 When eve=
r I set the center frequency, there is no error returned by the call. But w=
hen I transmit the data, it doesn&#39;t appear in scope. Whenever I remove =
the code to set the center frequency, things work fine and I cann see a spi=
ke at 10Mhz which is default frequency I guess. Any clues?</div><div dir=3D=
"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><div dir=3D"ltr">std::cout =
&lt;&lt; boost::format(&quot;Setting TX Freq: %f MHz...&quot;) % (freq/1e6)=
 &lt;&lt; std::endl;<br clear=3D"none">uhd::tune_request_t tune_request(fre=
q);<br clear=3D"none"><div>//usrp-&gt;set_tx_freq(tune_request, 0); - This =
line also doesn&#39;t work<br clear=3D"none"></div>usrp-&gt;set_tx_freq(fre=
q, 0);<br clear=3D"none">std::cout &lt;&lt; boost::format(&quot;Actual TX F=
req: %f MHz...&quot;) % (usrp-&gt;get_tx_freq(0)/1e6) &lt;&lt; std::endl &l=
t;&lt; std::endl;<br clear=3D"none"><br clear=3D"none"></div><div dir=3D"lt=
r">Thanks and Regards<br clear=3D"none"></div></div></div></div>___________=
____________________________________<br clear=3D"none">
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
        </div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c37c16059aedbbbb--


--===============2003325210404392022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2003325210404392022==--

